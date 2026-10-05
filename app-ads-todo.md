# app-ads.txt to-do

Generated on 2026-10-05 by `ruby tools/app_ads/run.rb`. Edit `app-ads/config.yml` and `app-ads/sources/`, never `app-ads.txt` directly.

2040 entries written, 662 duplicates removed.

## Pages to open

_`ruby tools/app_ads/run.rb --open` opens these 3 pages in your browser._

- [ ] **[ironSource (LevelPlay)](https://platform.ironsrc.com/)** · home → Avatar (bottom left) → Account → API tab → Publisher ID → add your line under `own:` in `app-ads/config.yml` · downloaded automatically
  - placeholder left out: `ironsrc.com, [yourironSourcePublisherAccountID], DIRECT`
- [ ] **[InMobi](https://publisher.inmobi.com/)** · home → Inventory → app-ads.txt → download the "maximum" list → paste the whole list into `app-ads/sources/networks/inmobi.txt` · never pasted
- [ ] **[Mintegral](https://dev.mintegral.com/)** · home → Account → Account Info → Publisher ID (line is "mintegral.com, <Publisher ID>, DIRECT") → add your line under `own:` in `app-ads/config.yml`

Other pages:

- **[Google AdMob](https://apps.admob.com/v2/apps/appadstxt)** · check every app shows Verified
- **[Meta Audience Network](https://business.facebook.com/settings)** · home → Business settings → Business info → Business ID
- **[AppLovin](https://dash.applovin.com/)** · home → Account → General → App-ads.txt Info · pasted 2026-10-05 (0 days ago)
- **[Unity Ads](https://cloud.unity.com/home/organizations/9071002137722/monetization/organization-settings)** · App-ads.txt → Show full list · pasted 2026-10-05 (0 days ago)
- **[Liftoff Monetize (Vungle)](https://publisher.vungle.com/vungleAdsTxt)** · Download app-ads.txt · pasted 2026-10-05 (0 days ago)
- **[LY Ads (LINE / Five)](https://developers.google.com/admob/unity/mediation/line)**
- **[Semseoymas (manager)](https://semseoymas.com/)** · lines are sent by the manager · pasted 2026-05-28 (130 days ago)

_"home →" links open the dashboard home page. Open the right page once and copy its URL into `page:` for that source in `app-ads/config.yml`: the link will then go straight to it._

<details><summary>Documentation</summary>

- [Google AdMob](https://developers.google.com/admob/android/app-ads)
- [Meta Audience Network](https://www.facebook.com/audiencenetwork/getting-started)
- [AppLovin](https://support.applovin.com/en/max/max-dashboard/account/iab-supply-chain-validation)
- [Unity Ads](https://docs.unity.com/en-us/grow/ads/optimization/app-ads-txt)
- [ironSource (LevelPlay)](https://docs.unity.com/en-us/grow/programmatic/ironsource-exchange/app-ads-txt)
- [InMobi](https://support.inmobi.com/monetize/manage-inventory/app-ads-txt/set-up-an-app-ads.txt-file-for-your-app)
- [Liftoff Monetize (Vungle)](https://support.vungle.com/hc/en-us/articles/360055891252-app-ads-txt)
- [Mintegral](https://developers.google.com/admob/android/mediation/mintegral)
- [LY Ads (LINE / Five)](https://developers.google.com/admob/unity/mediation/line)

</details>

## Deploy

- [ ] The live file differs from `app-ads.txt` (109 entries not live yet, 0 live entries removed locally): commit and push.

## SDK adapters in local Unity projects

- [ ] Adapter `pangle` (hawk tuah) has no source in `app-ads/config.yml`.

<details><summary>Adapter usage</summary>

| Adapter | Projects |
|---|---|
| applovin | FlappyBirdUltimate, FlinchCardGame, MultiTask, NertsOnline, SevenAndAHalf, ZankPatience, gojo tap challenge, hawk tuah |
| facebook | FlappyBirdUltimate, FlinchCardGame, MultiTask, NertsOnline, SevenAndAHalf, ZankPatience, gojo tap challenge |
| inmobi | FlappyBirdUltimate, FlinchCardGame, NertsOnline, ZankPatience, gojo tap challenge, hawk tuah |
| ironsource | FlappyBirdUltimate, FlinchCardGame, NertsOnline, ZankPatience, gojo tap challenge, hawk tuah |
| line | NertsOnline, ZankPatience |
| mintegral | FlappyBirdUltimate, FlinchCardGame, NertsOnline, ZankPatience, gojo tap challenge, hawk tuah |
| moloco | FlappyBirdUltimate, MultiTask, NertsOnline, ZankPatience |
| pangle | hawk tuah |
| unity | FlappyBirdUltimate, FlinchCardGame, MultiTask, NertsOnline, SevenAndAHalf, ZankPatience, gojo tap challenge, hawk tuah |
| vungle | FlappyBirdUltimate, FlinchCardGame, NertsOnline, ZankPatience, gojo tap challenge, hawk tuah |

</details>

## Invalid lines (ignored)

- [ ] `app-ads/sources/legacy.txt`: `singularads,548745,RESELLER`

## To review

<details><summary>8 seller IDs are declared both DIRECT and RESELLER (usually fine)</summary>

- `rubiconproject.com, 15268`
- `pubmatic.com, 162223`
- `pubmatic.com, 160565`
- `rubiconproject.com, 22884`
- `smartadserver.com, 4194`
- `synacor.com, 82460`
- `vidoomy.com, 7646534`
- `webeyemob.com, 70098`

</details>

## Legacy lines

- [ ] `app-ads/sources/legacy.txt`: 1425 of its 1974 entries are not provided by any other source. Once every network list is pasted, those are probably stale: review them, then delete the file.

## sellers.json audit

265 ad systems checked. Report only: a missing ID is often stale, but some ad systems publish incomplete sellers.json files.

<details><summary>509 entries whose seller ID is not in the ad system's sellers.json</summary>

**ad.plus** (1)

- `ad.plus, 23205246146, DIRECT` from Legacy (from the old hand-made file)

**adbility-media.com** (1)

- `adbility-media.com, 187, RESELLER` from Legacy (from the old hand-made file)

**adiiix.com** (3)

- `adiiix.com, par-9a2627866da4bbe4f4aa4a67a3dde686, RESELLER` from Legacy (from the old hand-made file)
- `adiiix.com, par-BE7E667E3339AD6BC7BA2887D6E7227A, RESELLER` from Legacy (from the old hand-made file)
- `adiiix.com, par-aa7b236ba32dd484c838e249362437b8, RESELLER` from Legacy (from the old hand-made file)

**adingo.jp** (1)

- `adingo.jp, 30456, RESELLER` from Legacy (from the old hand-made file)

**admanmedia.com** (4)

- `admanmedia.com, 2037, RESELLER` from Legacy (from the old hand-made file)
- `admanmedia.com, 2153, RESELLER` from Legacy (from the old hand-made file)
- `admanmedia.com, 621, RESELLER` from Legacy (from the old hand-made file)
- `admanmedia.com, 894, RESELLER` from Legacy (from the old hand-made file)

**admixer.net** (2)

- `admixer.net, 2f833c20-7378-4b86-9b73-a2b56263d4d4, RESELLER` from Legacy (from the old hand-made file)
- `admixer.net, 70590d13-5632-41d5-8a78-76bc239c528c, RESELLER` from Legacy (from the old hand-made file)

**adswizz.com** (1)

- `adswizz.com, consumable, RESELLER` from Legacy (from the old hand-made file)

**adtonos.com** (1)

- `adtonos.com, pub3603521960, RESELLER` from Legacy (from the old hand-made file)

**adview.com** (3)

- `adview.com, 32076181, RESELLER, 1b2cc038a11ea319` from Legacy (from the old hand-made file)
- `adview.com, 33633363, RESELLER, 1b2cc038a11ea319` from Legacy (from the old hand-made file)
- `adview.com, 48045325, RESELLER, 1b2cc038a11ea319` from Legacy (from the old hand-made file)

**advlion.com** (3)

- `advlion.com, 3054, RESELLER` from Legacy (from the old hand-made file)
- `advlion.com, 3083, RESELLER` from Legacy (from the old hand-made file)
- `advlion.com, 584, RESELLER` from Legacy (from the old hand-made file)

**algorix.co** (8)

- `algorix.co, 54250, RESELLER` from Legacy (from the old hand-made file)
- `algorix.co, 54510, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)
- `algorix.co, 60087, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)
- `algorix.co, 60095, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)
- `algorix.co, 60097, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)
- `algorix.co, 60197, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)
- `algorix.co, 60216, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)
- `algorix.co, 60299, RESELLER, 5b394c12fea27a1d` from Legacy (from the old hand-made file)

**alpineinteractivegroup.com** (1)

- `alpineinteractivegroup.com, 9263716895, RESELLER` from Legacy (from the old hand-made file)

**app-stock.com** (1)

- `app-stock.com, 256917, RESELLER` from Legacy (from the old hand-made file)

**appnexus.com** (28)

- `appnexus.com, 6849, RESELLER, f5ab79cb980f11d1` from Unity Ads
- `appnexus.com, 10617, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 10824, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 11664, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12475, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12501, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12637, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12752, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12867, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12941, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 12969, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 13074, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 13091, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 13101, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 13181, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 13227, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 1354, RESELLER` from Legacy (from the old hand-made file)
- `appnexus.com, 14077, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 15980, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 17234, RESELLER` from Legacy (from the old hand-made file)
- `appnexus.com, 1752, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 2480, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 3368, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 7445, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 8178, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 9316, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 9382, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `appnexus.com, 9569, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)

**aralego.com** (3)

- `aralego.com, par-E2B2BB3E89BE87A2F774B768BEED62A2, RESELLER` from Legacy (from the old hand-made file)
- `aralego.com, par-aa7b236ba32dd484c838e249362437b8, RESELLER` from Legacy (from the old hand-made file)
- `aralego.com, par-e2b2bb3e89be87a2f774b768beed62a2, RESELLER` from Legacy (from the old hand-made file)

**ardenodemedia.com** (1)

- `ardenodemedia.com, 5819463753, RESELLER` from Legacy (from the old hand-made file)

**axonix.com** (4)

- `axonix.com, 55724, RESELLER` from Legacy (from the old hand-made file)
- `axonix.com, 59089, RESELLER, bc385f2b4a87b721` from Legacy (from the old hand-made file)
- `axonix.com, 59101, RESELLER, bc385f2b4a87b721` from Legacy (from the old hand-made file)
- `axonix.com, 59113, RESELLER, bc385f2b4a87b721` from Legacy (from the old hand-made file)

**balloonlabs.ai** (1)

- `balloonlabs.ai, 6254571642, RESELLER` from Legacy (from the old hand-made file)

**betweendigital.com** (2)

- `betweendigital.com, 43092, RESELLER` from Legacy (from the old hand-made file)
- `betweendigital.com, 43843, RESELLER` from Legacy (from the old hand-made file)

**bid-matrix.com** (1)

- `bid-matrix.com, 7a33a9718c7ee898, RESELLER` from Legacy (from the old hand-made file)

**bidease.com** (2)

- `bidease.com, bidease_seller_34, RESELLER` from Legacy (from the old hand-made file)
- `bidease.com, exchange-20, RESELLER` from Legacy (from the old hand-made file)

**bidmachine.io** (1)

- `bidmachine.io, 114, RESELLER` from Legacy (from the old hand-made file)

**bidnex.com** (1)

- `bidnex.com, 8, RESELLER` from Liftoff Monetize (Vungle)

**bigo.sg** (6)

- `bigo.sg, 1011110, RESELLER` from Legacy (from the old hand-made file)
- `bigo.sg, 109, RESELLER` from Legacy (from the old hand-made file)
- `bigo.sg, 122, RESELLER` from Legacy (from the old hand-made file)
- `bigo.sg, 128, RESELLER` from Legacy (from the old hand-made file)
- `bigo.sg, 130, RESELLER` from Legacy (from the old hand-made file)
- `bigo.sg, 143, RESELLER` from Legacy (from the old hand-made file)

**blueseasx.com** (1)

- `blueseasx.com, 232670, RESELLER, 7998eac5087f6110` from Legacy (from the old hand-made file)

**caerulus.io** (1)

- `caerulus.io, 3320-44758, RESELLER` from Legacy (from the old hand-made file)

**castify.ai** (1)

- `castify.ai, 1210421, RESELLER` from Legacy (from the old hand-made file)

**chartboost.com** (2)

- `chartboost.com, 5da62a1035b91e0aff190bf7, RESELLER` from Legacy (from the old hand-made file)
- `chartboost.com, 5eac93f341016b09ff0019b6, RESELLER` from Legacy (from the old hand-made file)

**chocolateplatform.com** (1)

- `chocolateplatform.com, 14637, RESELLER, 49a66ce31a704197` from Legacy (from the old hand-made file)

**connekt.ai** (1)

- `connekt.ai, 1732945743, RESELLER` from Legacy (from the old hand-made file)

**contextweb.com** (31)

- `contextweb.com, 159668, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 558638, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 561849, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 561884, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 561913, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 561998, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562146, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562329, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562499, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562546, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562724, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562757, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562762, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562772, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562791, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562818, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562827, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562842, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562872, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562878, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562944, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 562954, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563017, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563079, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563195, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563217, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563265, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563285, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563521, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563595, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)
- `contextweb.com, 563605, RESELLER, 89ff185a4c4e857c` from Legacy (from the old hand-made file)

**conversantmedia.com** (2)

- `conversantmedia.com, 100688, RESELLER, 03113cd04947736d` from Legacy (from the old hand-made file)
- `conversantmedia.com, 100691, RESELLER, 03113cd04947736d` from Legacy (from the old hand-made file)

**criteo.com** (17)

- `criteo.com, b-062019, RESELLER, 9fac4a4a87c2a44f` from ironSource (LevelPlay)
- `criteo.com, 186227, RESELLER` from Legacy (from the old hand-made file)
- `criteo.com, B-057601, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, B-057955, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, B-063105, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, B-064322, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, B-070302, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, B-071797, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, B-072581, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-057601, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-057955, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-063105, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-064322, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-070302, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-071797, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-072395, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)
- `criteo.com, b-072581, RESELLER, 9fac4a4a87c2a44f` from Legacy (from the old hand-made file)

**dauup.com** (1)

- `dauup.com, 34222, RESELLER, 4daba13e2b0dfd9` from Unity Ads

**disqus.com** (1)

- `disqus.com, 525, RESELLER` from Legacy (from the old hand-made file)

**domob.cn** (2)

- `domob.cn, 1920413885827911680, RESELLER` from Legacy (from the old hand-made file)
- `domob.cn, 1946100234484453376, RESELLER` from Legacy (from the old hand-made file)

**e-planning.net** (2)

- `e-planning.net, 081dcb996d2ccc1e, RESELLER, c1ba615865ed87b2` from Legacy (from the old hand-made file)
- `e-planning.net, ea9874674191f1ff, RESELLER, c1ba615865ed87b2` from Legacy (from the old hand-made file)

**emxdgt.com** (2)

- `emxdgt.com, 1324, RESELLER, 1e1d41537f7cad7f` from Legacy (from the old hand-made file)
- `emxdgt.com, 2041, RESELLER, 1e1d41537f7cad7f` from Legacy (from the old hand-made file)

**eskimi.com** (1)

- `eskimi.com, 2020000545, RESELLER` from Legacy (from the old hand-made file)

**freewheel.tv** (15)

- `freewheel.tv, 741650, RESELLER` from Unity Ads
- `freewheel.tv, 1137745, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1138513, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1157729, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1157777, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1220655, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1235183, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1235279, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1446674, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1585279, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1601388, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1601610, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1601613, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1604590, RESELLER` from Legacy (from the old hand-made file)
- `freewheel.tv, 1604595, RESELLER` from Legacy (from the old hand-made file)

**galaxyx-tech.com** (1)

- `galaxyx-tech.com, 60056, RESELLER` from ironSource (LevelPlay)

**gamaigroup.com** (1)

- `gamaigroup.com, 423056, RESELLER` from AppLovin

**gitberry.com** (1)

- `gitberry.com, 42knb, RESELLER` from Legacy (from the old hand-made file)

**goldbach-germany.de** (1)

- `goldbach-germany.de, balloonlabs, RESELLER` from Legacy (from the old hand-made file)

**google.com** (6)

- `google.com, pub-2923085774557613, RESELLER, f08c47fec0942fa0` from Unity Ads
- `google.com, pub-3990748024667386, RESELLER, f08c47fec0942fa0` from Unity Ads
- `google.com, pub-3769010358500643, RESELLER, f08c47fec0942fa0` from Legacy (from the old hand-made file)
- `google.com, pub-4568609371004228, RESELLER, f08c47fec0942fa0` from Legacy (from the old hand-made file)
- `google.com, pub-7452201096415972, RESELLER, f08c47fec0942fa0` from Legacy (from the old hand-made file)
- `google.com, pub-9676322583250348, RESELLER, f08c47fec0942fa0` from Legacy (from the old hand-made file)

**groundtruth.com** (1)

- `groundtruth.com, 107, RESELLER, 81cbf0a75a5e0e9a` from Legacy (from the old hand-made file)

**growintech.co** (1)

- `growintech.co, 2723d092b63885e0d7c260cc007e8b9d2393g, RESELLER, 9d8dfe5c6b00fb37` from Legacy (from the old hand-made file)

**ignitemediatech.com** (3)

- `ignitemediatech.com, 61119, RESELLER` from Legacy (from the old hand-made file)
- `ignitemediatech.com, pub_1001, RESELLER` from Legacy (from the old hand-made file)
- `ignitemediatech.com, pub_61351, RESELLER` from Legacy (from the old hand-made file)

**imds.tv** (1)

- `imds.tv, 82578, RESELLER, ae6c32151e71f19d` from Legacy (from the old hand-made file)

**improvedigital.com** (5)

- `improvedigital.com, 1366, RESELLER` from Legacy (from the old hand-made file)
- `improvedigital.com, 1604, RESELLER` from Legacy (from the old hand-made file)
- `improvedigital.com, 2276, RESELLER` from Legacy (from the old hand-made file)
- `improvedigital.com, 2343, RESELLER` from Legacy (from the old hand-made file)
- `improvedigital.com, 2450, RESELLER` from Legacy (from the old hand-made file)

**indexexchange.com** (23)

- `indexexchange.com, 182257, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 183920, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 184270, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 184349, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 184738, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 185578, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 185774, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 185996, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 186684, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 190856, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 191332, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 191497, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 192806, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 192829, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 193747, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 194080, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 194273, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 194730, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 194974, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 195812, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 197137, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 198417, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)
- `indexexchange.com, 199195, RESELLER, 50b1c356f2c5c8fc` from Legacy (from the old hand-made file)

**inmobi.com** (36)

- `inmobi.com, 23d316d3d980453d8ea0dcf9caec4078, RESELLER, 83e75a7ae333ca9d` from ironSource (LevelPlay)
- `inmobi.com, 86357825a302443d9a99c0b5dda0eafa, RESELLER, 83e75a7ae333ca9d` from ironSource (LevelPlay)
- `inmobi.com, 5d2c913a0c5f4142acc7412723ee15d7, RESELLER, 83e75a7ae333ca9d` from Liftoff Monetize (Vungle)
- `inmobi.com, ec6f6ceb8bb1440ba5455644ec96c275, RESELLER, 83e75a7ae333ca9d` from Liftoff Monetize (Vungle)
- `inmobi.com, 09f53411034d4d608cd6230490d46fff, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 0c2fa8130b884712913cc0bfc84e1c31, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 0c8e054083954c68a45044396a1c3df8, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 23800006c42e4a739966c05ca0ac4854, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 2ce1d976516340a49b12e59749659864, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 300bb0e4e3704cd495136c09d57448b9, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 30eb9116886a497db0c502e8cf0aa4d3, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 30f3830cfef249a3ad46ee1a0bba7af3, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 33f042dcf10549ae9fb1b9e2ee0ecfc3, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 389d602d8990410183b192230ca7afa9, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 38e36193f3c944d0b6254c71e511041b, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 3a4f7da341dd490cbb7dde02b126275e, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 4451d1f01be9464fbefca01a73ff8294, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 5baa7ca93ef847c0876297e737dac3ee, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 61d733c3779d43e590c51c8bc078e10c, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 625b6b37c3a340938a8ff02bc83b5a04, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 662fb54f5d15471a80b4ddaa467e84b0, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 6cc71dd159864641a03ce0c8792d801f, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 7798aa742d014cd79627bb67ec431379, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 791b84bdd791470faa8dca5f04e6a83b, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, 9560caf77e0f4e14a9cd83cd9561de29, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, ab915bcef5b24940bf745f1a8f427bec, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, ba5fd3fb82c5412989b23c3eec71baf7, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, c1e6d3502da64ebaa3ad0e4a4be15f11, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, d708160556074572b05ed3cf112bb66f, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, ddb41d8a9f434a918d05a0fc9999d9f9, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, e571e03c05664d25becfd1174c7e0dbd, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, ebc44eef6c104f7fbf7bc52ee29f7939, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, edd282ac8f29464792bf2b7f3df2f9df, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, ef083d721beb4c0f8776ced01e262c03, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, f3924290136e4129a5c082ff982c3a58, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)
- `inmobi.com, f71b28e30a8249c3b08a9bca1a5cfbb7, RESELLER, 83e75a7ae333ca9d` from Legacy (from the old hand-made file)

**kidoz.net** (1)

- `kidoz.net, 19692013, RESELLER` from Legacy (from the old hand-made file)

**liftoff.io** (1)

- `liftoff.io, 7f6945815e6, RESELLER` from Legacy (from the old hand-made file)

**lijit.com** (3)

- `lijit.com, 606973, RESELLER, fafdf38b16bf6b2b` from Unity Ads
- `lijit.com, 357833, DIRECT, fafdf38b16bf6b2b` from Legacy (from the old hand-made file)
- `lijit.com, 357833-eb, DIRECT, fafdf38b16bf6b2b` from Legacy (from the old hand-made file)

**loopme.com** (7)

- `loopme.com, 11119, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)
- `loopme.com, 11342, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)
- `loopme.com, 11367, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)
- `loopme.com, 11544, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)
- `loopme.com, 14009, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)
- `loopme.com, 15629, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)
- `loopme.com, s-2411, RESELLER, 6c8d5f95897a5a3b` from Legacy (from the old hand-made file)

**lunamedia.io** (1)

- `lunamedia.io, 464b5a3a-b155-4f05-8953-9f6cd192d932, RESELLER, 524ecb396915caaf` from Legacy (from the old hand-made file)

**media.net** (3)

- `media.net, 8CU675N41, RESELLER` from Unity Ads
- `media.net, 8CU355VS4, RESELLER` from Legacy (from the old hand-made file)
- `media.net, 8cu355vs4, RESELLER` from Legacy (from the old hand-made file)

**mediafuse.com** (1)

- `mediafuse.com, 316569, RESELLER` from Legacy (from the old hand-made file)

**meitu.com** (3)

- `meitu.com, 149, RESELLER` from Legacy (from the old hand-made file)
- `meitu.com, 179, RESELLER` from Legacy (from the old hand-made file)
- `meitu.com, 253, RESELLER` from Legacy (from the old hand-made file)

**mobismarter.com** (1)

- `mobismarter.com, 3294, RESELLER` from Legacy (from the old hand-made file)

**mobupps.com** (1)

- `mobupps.com, c74d97b01eae257e44aa9d5bade97baf32954, RESELLER` from Legacy (from the old hand-made file)

**ogury.com** (2)

- `ogury.com, 065d4ff5-a269-44be-9634-9d4d7af2dfc3, RESELLER` from Unity Ads
- `ogury.com, 94097320-ac25-4bfb-9082-c6784e3932fd, RESELLER` from Liftoff Monetize (Vungle)

**omnifytv.com** (1)

- `omnifytv.com, 05096ffe925c11eda1eb0242ac120002, RESELLER` from Legacy (from the old hand-made file)

**onetag.com** (6)

- `onetag.com, 59aa7be4921bac8, RESELLER` from Legacy (from the old hand-made file)
- `onetag.com, 66cff8e37d871be, RESELLER` from Legacy (from the old hand-made file)
- `onetag.com, 73720b89bbda622, RESELLER` from Legacy (from the old hand-made file)
- `onetag.com, 7ba1175dffb3110, RESELLER` from Legacy (from the old hand-made file)
- `onetag.com, 7f0608eb573638f, DIRECT` from Legacy (from the old hand-made file)
- `onetag.com, 82e44d118b79600, DIRECT` from Legacy (from the old hand-made file)

**openx.com** (8)

- `openx.com, 539214772, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)
- `openx.com, 539315083, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)
- `openx.com, 540011801, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)
- `openx.com, 540311484, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)
- `openx.com, 540646187, RESELLER` from Legacy (from the old hand-made file)
- `openx.com, 540861995, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)
- `openx.com, 540871654, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)
- `openx.com, 541177349, RESELLER, 6a698e2ec38604c6` from Legacy (from the old hand-made file)

**opera.com** (5)

- `opera.com, pub13954598314368, RESELLER, 55a0c5fd61378de3` from Liftoff Monetize (Vungle)
- `opera.com, pub10908243052672, DIRECT, 55a0c5fd61378de3` from Legacy (from the old hand-made file)
- `opera.com, pub5881703796480, RESELLER, 55a0c5fd61378de3` from Legacy (from the old hand-made file)
- `opera.com, pub6584435113344, DIRECT, 55a0c5fd61378de3` from Legacy (from the old hand-made file)
- `opera.com, pub9598682313984, RESELLER, 55a0c5fd61378de3` from Legacy (from the old hand-made file)

**orangeclickmedia.com** (3)

- `orangeclickmedia.com, C-1181, RESELLER` from Legacy (from the old hand-made file)
- `orangeclickmedia.com, c-1034, RESELLER` from Legacy (from the old hand-made file)
- `orangeclickmedia.com, c-1181, RESELLER` from Legacy (from the old hand-made file)

**outbrain.com** (8)

- `outbrain.com, 0005bfbc60db1570e63954937b4bec06de, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 0023749a2264ea0429a71b54ac9ca0de9a, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 002d7f7ba0bd74452f2b155d0dfb5cd6c8, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 0073fa86cff719c752763d2c3ee52c8f00, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 009003959a5821f830a09d0bc562b43c62, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 00a7a621155a60e5a12298c11790e00a60, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 00ab8f68679cc060c8bbc1035e70030614, RESELLER` from Legacy (from the old hand-made file)
- `outbrain.com, 00bba279fec6daa01a0cb6fdccb023f0d5, RESELLER` from Legacy (from the old hand-made file)

**peak226.com** (1)

- `peak226.com, 12400, RESELLER` from Legacy (from the old hand-made file)

**pubmatic.com** (12)

- `pubmatic.com, 156372, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 156855, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 157558, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 158271, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 158362, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 159668, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 161373, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 161853, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 162239, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 164018, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 164019, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)
- `pubmatic.com, 8676470, RESELLER, 5d62403b186f2ace` from Legacy (from the old hand-made file)

**pubnative.net** (1)

- `pubnative.net, 1007215, RESELLER, d641df8625486a7b` from Legacy (from the old hand-made file)

**rhebus.works** (23)

- `rhebus.works, 1294344401, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 3478092519, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 3773877793, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 3816258913, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 3905352096, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 3953107506, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 3960202499, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 4024553356, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 4061490289, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 4374036950, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 5066442680, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 5562406025, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 6394460651, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 6591576863, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 6735335561, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 7685780667, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 8166512657, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 8727901570, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 8957165819, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 9626016426, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 9678734099, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 9950121748, RESELLER` from Legacy (from the old hand-made file)
- `rhebus.works, 9959690579, RESELLER` from Legacy (from the old hand-made file)

**risecodes.com** (2)

- `risecodes.com, 6022acddc8b2f90001767980, RESELLER` from Legacy (from the old hand-made file)
- `risecodes.com, 6486c6155b231000010244b0, RESELLER` from Legacy (from the old hand-made file)

**rubiconproject.com** (18)

- `rubiconproject.com, 28341, RESELLER, 0bfd66d529a55807` from Unity Ads
- `rubiconproject.com, 12286, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 13918, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 14334, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 19724, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 20086, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 21526, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 23732, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 23822, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 24442, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 24908, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 24914, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 26158, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 26168, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 26270, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 26386, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 26510, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)
- `rubiconproject.com, 26566, RESELLER, 0bfd66d529a55807` from Legacy (from the old hand-made file)

**screenil.com** (1)

- `screenil.com, 554156, RESELLER` from Legacy (from the old hand-made file)

**sharethrough.com** (1)

- `sharethrough.com, 5828-OB, RESELLER, d53b998a7bd4ecd2` from Legacy (from the old hand-made file)

**smaato.com** (6)

- `smaato.com, 1100042823, RESELLER, 07bcf65f187117b4` from Legacy (from the old hand-made file)
- `smaato.com, 1100047413, RESELLER, 07bcf65f187117b4` from Legacy (from the old hand-made file)
- `smaato.com, 1100050739, RESELLER, 07bcf65f187117b4` from Legacy (from the old hand-made file)
- `smaato.com, 1100051178, RESELLER, 07bcf65f187117b4` from Legacy (from the old hand-made file)
- `smaato.com, 1100055341, RESELLER, 07bcf65f187117b4` from Legacy (from the old hand-made file)
- `smaato.com, 1100056144, RESELLER, 07bcf65f187117b4` from Legacy (from the old hand-made file)

**smartadserver.com** (12)

- `smartadserver.com, 3236-OB, RESELLER, 060d053dcf45cbf3` from Semseoymas (manager)
- `smartadserver.com, 3999, RESELLER, 060d053dcf45cbf3` from Legacy (from the old hand-made file)
- `smartadserver.com, 4012, RESELLER` from Legacy (from the old hand-made file)
- `smartadserver.com, 4071, RESELLER` from Legacy (from the old hand-made file)
- `smartadserver.com, 4073, RESELLER` from Legacy (from the old hand-made file)
- `smartadserver.com, 4074, RESELLER` from Legacy (from the old hand-made file)
- `smartadserver.com, 4194-ob, RESELLER, 060d053dcf45cbf3` from Legacy (from the old hand-made file)
- `smartadserver.com, 4202, RESELLER` from Legacy (from the old hand-made file)
- `smartadserver.com, 4367, RESELLER, 060d053dcf45cbf3` from Legacy (from the old hand-made file)
- `smartadserver.com, 4573, RESELLER, 060d053dcf45cbf3` from Legacy (from the old hand-made file)
- `smartadserver.com, 4941-OB, RESELLER, 060d053dcf45cbf3` from Legacy (from the old hand-made file)
- `smartadserver.com, 5828-OB, RESELLER, 060d053dcf45cbf3` from Legacy (from the old hand-made file)

**smartclip.net** (6)

- `smartclip.net, 12358, RESELLER` from Legacy (from the old hand-made file)
- `smartclip.net, 12422, RESELLER` from Legacy (from the old hand-made file)
- `smartclip.net, 13039, RESELLER` from Legacy (from the old hand-made file)
- `smartclip.net, 14275, RESELLER` from Legacy (from the old hand-made file)
- `smartclip.net, 411, RESELLER` from Legacy (from the old hand-made file)
- `smartclip.net, 9394, RESELLER` from Legacy (from the old hand-made file)

**smartyads.com** (2)

- `smartyads.com, 1272, RESELLER, fd2bde0ff2e62c5d` from Legacy (from the old hand-made file)
- `smartyads.com, 897, RESELLER, fd2bde0ff2e62c5d` from Legacy (from the old hand-made file)

**sonobi.com** (5)

- `sonobi.com, 5b003395a5, RESELLER, d1a215d9eb5aee9e` from Legacy (from the old hand-made file)
- `sonobi.com, 7b37f8ccbc, RESELLER, d1a215d9eb5aee9e` from Legacy (from the old hand-made file)
- `sonobi.com, a85c5f6129, RESELLER, d1a215d9eb5aee9e` from Legacy (from the old hand-made file)
- `sonobi.com, c58cf86903, RESELLER, d1a215d9eb5aee9e` from Legacy (from the old hand-made file)
- `sonobi.com, cc3858f35e, RESELLER, d1a215d9eb5aee9e` from Legacy (from the old hand-made file)

**start.io** (2)

- `start.io, inm, RESELLER` from Legacy (from the old hand-made file)
- `start.io, wbe, RESELLER` from Legacy (from the old hand-made file)

**stroeer.com** (1)

- `stroeer.com, 17355, RESELLER` from Legacy (from the old hand-made file)

**synacor.com** (3)

- `synacor.com, 82171, RESELLER, e108f11b2cdf7d5b` from Legacy (from the old hand-made file)
- `synacor.com, 82460, DIRECT, e108f11b2cdf7d5b` from Legacy (from the old hand-made file)
- `synacor.com, 82460, RESELLER, e108f11b2cdf7d5b` from Legacy (from the old hand-made file)

**targetspot.com** (1)

- `targetspot.com, 270, RESELLER, feb28ed826dcf532` from Legacy (from the old hand-made file)

**taurusx.com** (3)

- `taurusx.com, 70079, RESELLER` from Legacy (from the old hand-made file)
- `taurusx.com, 70628, RESELLER` from Legacy (from the old hand-made file)
- `taurusx.com, 80029, RESELLER` from Legacy (from the old hand-made file)

**telaria.com** (2)

- `telaria.com, 80zxm-1141857, RESELLER, 1a4e959a1b50034a` from Legacy (from the old hand-made file)
- `telaria.com, rwd19-1141857, RESELLER, 1a4e959a1b50034a` from Legacy (from the old hand-made file)

**thebrave.io** (2)

- `thebrave.io, 1234594, RESELLER, c25b2154543746ac` from Legacy (from the old hand-made file)
- `thebrave.io, 1234678, RESELLER, c25b2154543746ac` from Legacy (from the old hand-made file)

**themediagrid.com** (4)

- `themediagrid.com, DY1OVP, RESELLER, 35d5010d7789b49d` from Legacy (from the old hand-made file)
- `themediagrid.com, R28I9J, RESELLER, 35d5010d7789b49d` from Legacy (from the old hand-made file)
- `themediagrid.com, a249ed, RESELLER, 35d5010d7789b49d` from Legacy (from the old hand-made file)
- `themediagrid.com, r28i9j, RESELLER, 35d5010d7789b49d` from Legacy (from the old hand-made file)

**thunder-monetize.com** (24)

- `thunder-monetize.com, 1858090629, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 2626756011, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 3962740416, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 5016320847, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 5102475972, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 5257091605, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 5462031088, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 5714748458, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 5803687805, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 6124986497, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 6268002838, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 6394460651, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 6747258203, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 7169228962, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 7213903648, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 7373737053, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 8221217003, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 8227779878, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 8432987942, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 8534885299, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 8764970206, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 9214052224, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 9326167394, RESELLER` from Legacy (from the old hand-made file)
- `thunder-monetize.com, 9630185716, RESELLER` from Legacy (from the old hand-made file)

**toponad.com** (1)

- `toponad.com, 16385e313a271a, DIRECT, 1d49fe424a1a456d` from Legacy (from the old hand-made file)

**tradplusad.com** (1)

- `tradplusad.com, b3fca24bd11c1242, RESELLER` from Legacy (from the old hand-made file)

**tremorhub.com** (4)

- `tremorhub.com, 80zxm-1141857, RESELLER, 1a4e959a1b50034a` from Legacy (from the old hand-made file)
- `tremorhub.com, q017o-78mlk, RESELLER, 1a4e959a1b50034a` from Legacy (from the old hand-made file)
- `tremorhub.com, rwd19-1141857, RESELLER, 1a4e959a1b50034a` from Legacy (from the old hand-made file)
- `tremorhub.com, s92od-u4sw5, RESELLER, 1a4e959a1b50034a` from Legacy (from the old hand-made file)

**triplelift.com** (2)

- `triplelift.com, 14705-EB, RESELLER` from Unity Ads
- `triplelift.com, 95054, RESELLER, 6c33edb13117fd86` from Legacy (from the old hand-made file)

**ucfunnel.com** (3)

- `ucfunnel.com, par-E2B2BB3E89BE87A2F774B768BEED62A2, RESELLER` from Legacy (from the old hand-made file)
- `ucfunnel.com, par-aa7b236ba32dd484c838e249362437b8, RESELLER` from Legacy (from the old hand-made file)
- `ucfunnel.com, par-e2b2bb3e89be87a2f774b768beed62a2, RESELLER` from Legacy (from the old hand-made file)

**undertone.com** (1)

- `undertone.com, 3635, RESELLER` from Legacy (from the old hand-made file)

**unrulymedia.com** (4)

- `unrulymedia.com, 1286320118, RESELLER` from Legacy (from the old hand-made file)
- `unrulymedia.com, 682817271102171104, RESELLER` from Legacy (from the old hand-made file)
- `unrulymedia.com, 7093244032824963982, RESELLER` from Legacy (from the old hand-made file)
- `unrulymedia.com, 962111114, RESELLER` from Legacy (from the old hand-made file)

**video.unrulymedia.com** (15)

- `video.unrulymedia.com, 123476257, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 1286320118, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 144481089, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 2564526802, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 3169196794, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 3630748062, RESELLER, a670c89d4a324e47` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 4631344382657206988, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 5336134699710583737, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 6111915185540403805, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 682817271102171104, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 7093244032824963982, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 755432070, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 827123801, RESELLER` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 895733750, DIRECT` from Legacy (from the old hand-made file)
- `video.unrulymedia.com, 962111114, RESELLER` from Legacy (from the old hand-made file)

**vidoomy.com** (8)

- `vidoomy.com, 8953515, RESELLER` from Unity Ads
- `vidoomy.com, 2412786, RESELLER` from Legacy (from the old hand-made file)
- `vidoomy.com, 4930225, RESELLER` from Legacy (from the old hand-made file)
- `vidoomy.com, 4977914, RESELLER` from Legacy (from the old hand-made file)
- `vidoomy.com, 6858194, RESELLER` from Legacy (from the old hand-made file)
- `vidoomy.com, 7646534, DIRECT` from Legacy (from the old hand-made file)
- `vidoomy.com, 7646534, RESELLER` from Legacy (from the old hand-made file)
- `vidoomy.com, 9783712, RESELLER` from Legacy (from the old hand-made file)

**visiblemeasures.com** (1)

- `visiblemeasures.com, 1020, RESELLER` from Legacy (from the old hand-made file)

**webeyemob.com** (6)

- `webeyemob.com, 70096, RESELLER` from Legacy (from the old hand-made file)
- `webeyemob.com, 70100, RESELLER` from Legacy (from the old hand-made file)
- `webeyemob.com, 70101, RESELLER` from Legacy (from the old hand-made file)
- `webeyemob.com, 70107, RESELLER` from Legacy (from the old hand-made file)
- `webeyemob.com, 70628, RESELLER` from Legacy (from the old hand-made file)
- `webeyemob.com, 80029, RESELLER` from Legacy (from the old hand-made file)

**xad.com** (1)

- `xad.com, 958, RESELLER, 81cbf0a75a5e0e9a` from Legacy (from the old hand-made file)

**xandr.com** (6)

- `xandr.com, 10128, RESELLER, f5ab79cb980f11d1` from Liftoff Monetize (Vungle)
- `xandr.com, 12745, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `xandr.com, 2480, RESELLER` from Legacy (from the old hand-made file)
- `xandr.com, 3318, RESELLER` from Legacy (from the old hand-made file)
- `xandr.com, 8804, RESELLER, f5ab79cb980f11d1` from Legacy (from the old hand-made file)
- `xandr.com, 8916, RESELLER` from Legacy (from the old hand-made file)

**xapads.com** (2)

- `xapads.com, 117219, RESELLER` from Legacy (from the old hand-made file)
- `xapads.com, 155860, RESELLER` from Legacy (from the old hand-made file)

**yahoo.com** (13)

- `yahoo.com, 55771, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)
- `yahoo.com, 56860, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)
- `yahoo.com, 57872, RESELLER` from Legacy (from the old hand-made file)
- `yahoo.com, 58935, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)
- `yahoo.com, 59025, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)
- `yahoo.com, 59052, RESELLER` from Legacy (from the old hand-made file)
- `yahoo.com, 59244, RESELLER` from Legacy (from the old hand-made file)
- `yahoo.com, 59262, RESELLER` from Legacy (from the old hand-made file)
- `yahoo.com, 59318, RESELLER` from Legacy (from the old hand-made file)
- `yahoo.com, 59627, RESELLER` from Legacy (from the old hand-made file)
- `yahoo.com, 59961, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)
- `yahoo.com, 59974, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)
- `yahoo.com, 60010, RESELLER, e1a5b5b6e3255540` from Legacy (from the old hand-made file)

**yandex.com** (6)

- `yandex.com, 37982190, RESELLER` from Legacy (from the old hand-made file)
- `yandex.com, 40427798, RESELLER` from Legacy (from the old hand-made file)
- `yandex.com, 63904735, RESELLER` from Legacy (from the old hand-made file)
- `yandex.com, 94923424, RESELLER` from Legacy (from the old hand-made file)
- `yandex.com, 95746987, RESELLER` from Legacy (from the old hand-made file)
- `yandex.com, 97539269, RESELLER` from Legacy (from the old hand-made file)

**yeahmobi.com** (4)

- `yeahmobi.com, 15984, RESELLER` from Legacy (from the old hand-made file)
- `yeahmobi.com, 5135195, RESELLER` from Legacy (from the old hand-made file)
- `yeahmobi.com, 5135315, RESELLER` from Legacy (from the old hand-made file)
- `yeahmobi.com, 5135347, RESELLER` from Legacy (from the old hand-made file)

**yieldmo.com** (1)

- `yieldmo.com, 3036313774475649025, RESELLER` from Legacy (from the old hand-made file)

**zmaticoo.com** (2)

- `zmaticoo.com, 5135347, RESELLER` from Legacy (from the old hand-made file)
- `zmaticoo.com, 5135704, RESELLER` from Legacy (from the old hand-made file)


</details>

<details><summary>43 ad systems without a readable sellers.json</summary>

9dotsmedia.com, acd.op.hicloud.com, aceinmobi.com, adcolony.com, admixer.co.kr, admixplay.com, adtiming.com, advertising.com, adwmg.com, adx-dra.op.hicloud.com, adx-dre.op.hicloud.com, adx-drru.op.hicloud.com, agon.mobi, aol.com, bksn.se, ced-ns.sascdn.com, districtm.io, dmixer.co.kr, engagebdr.com, exchange.admazing.co, gamoshi.io, gothamads.com, hyperad.tech, kubient.com, max-mobi.com, mman.kr, pubwise.io, reforge.in, rhythmone.com, sabio.us, sovrn.com, spotx.tv, spotxchange.com, ssp.logan.ai, startapp.com, tapjoy.com, velismedia.com, yabbi.me, yieldnexus.com, ylhglobal.com, zetaglobal.com, zetaglobal.net, zoomd.com

</details>
