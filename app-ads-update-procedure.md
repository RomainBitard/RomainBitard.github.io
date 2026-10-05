# app-ads.txt update procedure

Never edit `app-ads.txt` by hand: it is generated.

## Weekly (5 min)

1. Run `ruby tools/app_ads/run.rb --open`. This also opens every page that needs you in your browser.
2. Open `app-ads-todo.md` and tick through the items:
   - **Lists to refresh**: open the dashboard link, copy the whole app-ads.txt list, paste it over the matching file in `app-ads/sources/networks/`, save.
   - **Your own IDs to configure**: copy your ID from the dashboard and add the line under `own:` for that network in `app-ads/config.yml`.
   - The other sections are informational. Act on them only if something looks wrong.
3. If you changed anything, run the script again.
4. Commit and push. The to-do's **Deploy** item disappears once the site is up to date.

Each network has one link in the to-do's **Pages to open** section. A link marked `home →` opens the dashboard home page. To make it direct, open the right page once and paste its URL into `page:` for that network in `app-ads/config.yml`.

## When something changes

| Situation | Do |
|---|---|
| A network emails you new lines | Paste its full list into its file, run the script |
| New ad SDK in a game | Add a source in `app-ads/config.yml` (copy an existing one), run the script |
| SDK removed from every game | Delete its source in `app-ads/config.yml` (and its file), run the script |
| A manager sends new lines | Replace `app-ads/sources/managers/<manager>.txt`, run the script |

## What the script does for you

- Downloads ironSource's list automatically.
- Replaces placeholder IDs (`<your id>`, `[...]`, `pub-XXXX`) with your own IDs from the config.
- Removes duplicates and invalid lines, and groups lines by network.
- Checks every line against the ad systems' `sellers.json` (report only, nothing deleted).
- Warns when a pasted list is older than 30 days, and when the live site differs from your local file.

## Files

- `app-ads/config.yml`: your networks, your own IDs and dashboard links. Edit it.
- `app-ads/sources/`: the lists you paste. Edit these.
- `app-ads/sources/legacy.txt`: your old hand-made file. Delete it once every network list is pasted.
- `app-ads.txt` and `app-ads-todo.md`: generated. Don't edit them.

`--offline` skips the downloads and checks (seconds instead of about 2 minutes).
