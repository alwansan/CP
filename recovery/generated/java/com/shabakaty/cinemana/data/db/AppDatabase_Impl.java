package com.shabakaty.cinemana.data.db;

import android.content.Context;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import com.shabakaty.downloader.bm0;
import com.shabakaty.downloader.g25;
import com.shabakaty.downloader.h25;
import com.shabakaty.downloader.hk4;
import com.shabakaty.downloader.ht2;
import com.shabakaty.downloader.jw0;
import com.shabakaty.downloader.kw0;
import com.shabakaty.downloader.lh0;
import com.shabakaty.downloader.s25;
import com.shabakaty.downloader.t25;
import com.shabakaty.downloader.u24;
import com.shabakaty.downloader.v24;
import com.shabakaty.downloader.v32;
import com.shabakaty.downloader.vt3;
import com.shabakaty.downloader.vy3;
import com.shabakaty.downloader.wf;
import com.shabakaty.downloader.wy3;
import com.shabakaty.downloader.xt3;
import com.shabakaty.downloader.yh4;
import com.shabakaty.downloader.zh4;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AppDatabase_Impl extends AppDatabase {
    public volatile vy3 n;
    public volatile jw0 o;
    public volatile s25 p;
    public volatile g25 q;
    public volatile u24 r;

    public class a extends xt3.a {
        public a(int i) {
            super(i);
        }

        @Override // com.shabakaty.downloader.xt3.a
        public void a(yh4 yh4Var) {
            yh4Var.H("CREATE TABLE IF NOT EXISTS `users` (`id` TEXT NOT NULL, `userName` TEXT NOT NULL, `firstName` TEXT NOT NULL, `lastName` TEXT NOT NULL, `password` TEXT NOT NULL, `token` TEXT NOT NULL, `refreshToken` TEXT NOT NULL, `refreshTime` TEXT NOT NULL, `img` TEXT NOT NULL, PRIMARY KEY(`id`))");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `search_table` (`nb` TEXT NOT NULL, `enTitle` TEXT NOT NULL, `arTitle` TEXT NOT NULL, `stars` TEXT NOT NULL, `year` TEXT NOT NULL, `kind` TEXT NOT NULL, `season` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `episodeNummer` TEXT NOT NULL, `rate` TEXT NOT NULL, `imgMediumThumbObjUrl` TEXT NOT NULL, `categoryEn` TEXT NOT NULL, `categoryAr` TEXT NOT NULL, PRIMARY KEY(`nb`))");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `CinemanaDownloadItem` (`id` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `title` TEXT NOT NULL, `stars` TEXT NOT NULL, `kind` TEXT NOT NULL, `sizeMB` INTEGER NOT NULL, `season` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `filmRating` TEXT NOT NULL, `tvShowRating` TEXT NOT NULL, `path` TEXT NOT NULL, `episodeNumber` TEXT NOT NULL, `special` TEXT NOT NULL, `useParentImg` TEXT NOT NULL, `parentSkipping` TEXT NOT NULL, `collectionID` INTEGER NOT NULL, `imgThumbObjUrl` TEXT NOT NULL, `qualityName` TEXT NOT NULL, `rootEpisode` TEXT NOT NULL, `hasIntroSkipping` INTEGER NOT NULL, `episodeFlag` TEXT NOT NULL, `lastUpdated` TEXT NOT NULL, `skippingDurations_start` TEXT NOT NULL, `skippingDurations_end` TEXT NOT NULL, PRIMARY KEY(`id`))");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `DownloadsCollectionItem` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `name` TEXT NOT NULL, `image` TEXT NOT NULL)");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `SubtitleDb` (`id` TEXT NOT NULL, `parentId` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `name` TEXT NOT NULL, `type` TEXT NOT NULL, `extension` TEXT NOT NULL, `file` TEXT NOT NULL, PRIMARY KEY(`id`))");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `SkippableSceneDB` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `parentId` TEXT NOT NULL, `start` INTEGER NOT NULL, `end` INTEGER NOT NULL, `controlLevel` TEXT NOT NULL)");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `video_status` (`id` TEXT NOT NULL, `videoId` TEXT NOT NULL, `liked` INTEGER NOT NULL, `watched` INTEGER NOT NULL, `annoying` INTEGER NOT NULL, `disLiked` INTEGER NOT NULL, `favorite` INTEGER NOT NULL, `watchLater` TEXT NOT NULL, `videoProgress` INTEGER NOT NULL, PRIMARY KEY(`id`), FOREIGN KEY(`videoId`) REFERENCES `video_model`(`nb`) ON UPDATE NO ACTION ON DELETE NO ACTION )");
            yh4Var.H("CREATE INDEX IF NOT EXISTS `videoId` ON `video_status` (`videoId`)");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `video_model` (`nb` TEXT NOT NULL, `enTitle` TEXT NOT NULL, `arTitle` TEXT NOT NULL, `otherTitle` TEXT NOT NULL, `stars` TEXT NOT NULL, `fileFile` TEXT NOT NULL, `arContent` TEXT NOT NULL, `enContent` TEXT NOT NULL, `mDate` TEXT NOT NULL, `year` TEXT NOT NULL, `kind` TEXT NOT NULL, `season` TEXT NOT NULL, `img` TEXT NOT NULL, `imgThumb` TEXT NOT NULL, `imgMediumThumb` TEXT NOT NULL, `imgObjUrl` TEXT NOT NULL, `imgMediumThumbObjUrl` TEXT NOT NULL, `filmRating` TEXT NOT NULL, `tvShowRating` TEXT NOT NULL, `episodeNummer` TEXT NOT NULL, `rate` TEXT NOT NULL, `special` TEXT NOT NULL, `itemDate` TEXT NOT NULL, `duration` TEXT NOT NULL, `imdbUrlRef` TEXT NOT NULL, `rootSeries` TEXT NOT NULL, `useParentImg` TEXT NOT NULL, `showComments` INTEGER NOT NULL, `episodeFlag` TEXT NOT NULL, `trailer` TEXT NOT NULL, `mock` INTEGER NOT NULL, `audioStreamNumber` TEXT NOT NULL, `parentSkipping` TEXT NOT NULL, `collectionID` INTEGER NOT NULL, `deleted` TEXT NOT NULL, `imgThumbObjUrl` TEXT NOT NULL, `ratingImg` TEXT NOT NULL, `arTranslationFilePath` TEXT NOT NULL, `hasIntroSkipping` INTEGER NOT NULL, `videoLikesNumber` TEXT NOT NULL, `videoDisLikesNumber` TEXT NOT NULL, `videoCommentsNumber` INTEGER NOT NULL, `videoViewsNumber` TEXT NOT NULL, `itemOrderList` TEXT NOT NULL, `listId` TEXT NOT NULL, `listSortOrder` TEXT NOT NULL, `castable` TEXT NOT NULL, `publishDate` TEXT NOT NULL, `episodeDesc` TEXT NOT NULL, `qualityName` TEXT NOT NULL, `customArTitle` TEXT NOT NULL, `customEnTitle` TEXT NOT NULL, `finished` INTEGER NOT NULL, `url` TEXT NOT NULL, `downloadTaskId` INTEGER NOT NULL, `downloadedTime` INTEGER NOT NULL, `size` TEXT NOT NULL, `description` TEXT NOT NULL, `addedToWatchLater` INTEGER NOT NULL, `watched` INTEGER NOT NULL, PRIMARY KEY(`nb`))");
            yh4Var.H("CREATE INDEX IF NOT EXISTS `nb` ON `video_model` (`nb`)");
            yh4Var.H("CREATE TABLE IF NOT EXISTS `settings` (`userId` TEXT NOT NULL, `filter_parentalLevel` TEXT NOT NULL, `filter_skipInAppropriateScenes` INTEGER NOT NULL, `filter_showContentWithNoSubtitle` INTEGER NOT NULL, `app_language` TEXT NOT NULL, `app_theme` INTEGER NOT NULL, `app_seekPeriod` INTEGER NOT NULL, `app_showSubtitles` INTEGER NOT NULL, `subtitles_subtitleColor` INTEGER NOT NULL, `subtitles_subtitleEdgeColor` INTEGER NOT NULL, `subtitles_subtitleBackgroundColor` INTEGER NOT NULL, `subtitles_subtitleEdge` INTEGER NOT NULL, `subtitles_subtitleFontScale` REAL NOT NULL, `subtitles_subtitleFontFamily` TEXT NOT NULL, PRIMARY KEY(`userId`))");
            yh4Var.H("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
            yh4Var.H("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '663afd1177d1ff597ddac9194d6e0a62')");
        }

        @Override // com.shabakaty.downloader.xt3.a
        public void b(yh4 yh4Var) {
            yh4Var.H("DROP TABLE IF EXISTS `users`");
            yh4Var.H("DROP TABLE IF EXISTS `search_table`");
            yh4Var.H("DROP TABLE IF EXISTS `CinemanaDownloadItem`");
            yh4Var.H("DROP TABLE IF EXISTS `DownloadsCollectionItem`");
            yh4Var.H("DROP TABLE IF EXISTS `SubtitleDb`");
            yh4Var.H("DROP TABLE IF EXISTS `SkippableSceneDB`");
            yh4Var.H("DROP TABLE IF EXISTS `video_status`");
            yh4Var.H("DROP TABLE IF EXISTS `video_model`");
            yh4Var.H("DROP TABLE IF EXISTS `settings`");
            List<vt3.b> list = AppDatabase_Impl.this.g;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Objects.requireNonNull(AppDatabase_Impl.this.g.get(i));
                }
            }
        }

        @Override // com.shabakaty.downloader.xt3.a
        public void c(yh4 yh4Var) {
            List<vt3.b> list = AppDatabase_Impl.this.g;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Objects.requireNonNull(AppDatabase_Impl.this.g.get(i));
                }
            }
        }

        @Override // com.shabakaty.downloader.xt3.a
        public void d(yh4 yh4Var) {
            AppDatabase_Impl.this.a = yh4Var;
            yh4Var.H("PRAGMA foreign_keys = ON");
            AppDatabase_Impl.this.k(yh4Var);
            List<vt3.b> list = AppDatabase_Impl.this.g;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    AppDatabase_Impl.this.g.get(i).a(yh4Var);
                }
            }
        }

        @Override // com.shabakaty.downloader.xt3.a
        public void e(yh4 yh4Var) {
        }

        @Override // com.shabakaty.downloader.xt3.a
        public void f(yh4 yh4Var) {
            lh0.a(yh4Var);
        }

        @Override // com.shabakaty.downloader.xt3.a
        public xt3.b g(yh4 yh4Var) {
            HashMap map = new HashMap(9);
            map.put("id", new hk4.a("id", "TEXT", true, 1, null, 1));
            map.put("userName", new hk4.a("userName", "TEXT", true, 0, null, 1));
            map.put("firstName", new hk4.a("firstName", "TEXT", true, 0, null, 1));
            map.put("lastName", new hk4.a("lastName", "TEXT", true, 0, null, 1));
            map.put("password", new hk4.a("password", "TEXT", true, 0, null, 1));
            map.put("token", new hk4.a("token", "TEXT", true, 0, null, 1));
            map.put("refreshToken", new hk4.a("refreshToken", "TEXT", true, 0, null, 1));
            map.put("refreshTime", new hk4.a("refreshTime", "TEXT", true, 0, null, 1));
            map.put("img", new hk4.a("img", "TEXT", true, 0, null, 1));
            hk4 hk4Var = new hk4("users", map, new HashSet(0), new HashSet(0));
            hk4 hk4VarA = hk4.a(yh4Var, "users");
            if (!hk4Var.equals(hk4VarA)) {
                return new xt3.b(false, "users(com.shabakaty.cinemana.domain.models.local.user.User).\n Expected:\n" + hk4Var + "\n Found:\n" + hk4VarA);
            }
            HashMap map2 = new HashMap(13);
            map2.put("nb", new hk4.a("nb", "TEXT", true, 1, null, 1));
            map2.put("enTitle", new hk4.a("enTitle", "TEXT", true, 0, null, 1));
            map2.put("arTitle", new hk4.a("arTitle", "TEXT", true, 0, null, 1));
            map2.put("stars", new hk4.a("stars", "TEXT", true, 0, null, 1));
            map2.put("year", new hk4.a("year", "TEXT", true, 0, null, 1));
            map2.put("kind", new hk4.a("kind", "TEXT", true, 0, null, 1));
            map2.put("season", new hk4.a("season", "TEXT", true, 0, null, 1));
            map2.put("imgObjUrl", new hk4.a("imgObjUrl", "TEXT", true, 0, null, 1));
            map2.put("episodeNummer", new hk4.a("episodeNummer", "TEXT", true, 0, null, 1));
            map2.put("rate", new hk4.a("rate", "TEXT", true, 0, null, 1));
            map2.put("imgMediumThumbObjUrl", new hk4.a("imgMediumThumbObjUrl", "TEXT", true, 0, null, 1));
            map2.put("categoryEn", new hk4.a("categoryEn", "TEXT", true, 0, null, 1));
            map2.put("categoryAr", new hk4.a("categoryAr", "TEXT", true, 0, null, 1));
            hk4 hk4Var2 = new hk4("search_table", map2, new HashSet(0), new HashSet(0));
            hk4 hk4VarA2 = hk4.a(yh4Var, "search_table");
            if (!hk4Var2.equals(hk4VarA2)) {
                return new xt3.b(false, "search_table(com.shabakaty.cinemana.data.db.search.SearchItem).\n Expected:\n" + hk4Var2 + "\n Found:\n" + hk4VarA2);
            }
            HashMap map3 = new HashMap(24);
            map3.put("id", new hk4.a("id", "TEXT", true, 1, null, 1));
            map3.put("downloadTaskId", new hk4.a("downloadTaskId", "INTEGER", true, 0, null, 1));
            map3.put("title", new hk4.a("title", "TEXT", true, 0, null, 1));
            map3.put("stars", new hk4.a("stars", "TEXT", true, 0, null, 1));
            map3.put("kind", new hk4.a("kind", "TEXT", true, 0, null, 1));
            map3.put("sizeMB", new hk4.a("sizeMB", "INTEGER", true, 0, null, 1));
            map3.put("season", new hk4.a("season", "TEXT", true, 0, null, 1));
            map3.put("imgObjUrl", new hk4.a("imgObjUrl", "TEXT", true, 0, null, 1));
            map3.put("filmRating", new hk4.a("filmRating", "TEXT", true, 0, null, 1));
            map3.put("tvShowRating", new hk4.a("tvShowRating", "TEXT", true, 0, null, 1));
            map3.put(FileDownloadModel.PATH, new hk4.a(FileDownloadModel.PATH, "TEXT", true, 0, null, 1));
            map3.put("episodeNumber", new hk4.a("episodeNumber", "TEXT", true, 0, null, 1));
            map3.put("special", new hk4.a("special", "TEXT", true, 0, null, 1));
            map3.put("useParentImg", new hk4.a("useParentImg", "TEXT", true, 0, null, 1));
            map3.put("parentSkipping", new hk4.a("parentSkipping", "TEXT", true, 0, null, 1));
            map3.put("collectionID", new hk4.a("collectionID", "INTEGER", true, 0, null, 1));
            map3.put("imgThumbObjUrl", new hk4.a("imgThumbObjUrl", "TEXT", true, 0, null, 1));
            map3.put("qualityName", new hk4.a("qualityName", "TEXT", true, 0, null, 1));
            map3.put("rootEpisode", new hk4.a("rootEpisode", "TEXT", true, 0, null, 1));
            map3.put("hasIntroSkipping", new hk4.a("hasIntroSkipping", "INTEGER", true, 0, null, 1));
            map3.put("episodeFlag", new hk4.a("episodeFlag", "TEXT", true, 0, null, 1));
            map3.put("lastUpdated", new hk4.a("lastUpdated", "TEXT", true, 0, null, 1));
            map3.put("skippingDurations_start", new hk4.a("skippingDurations_start", "TEXT", true, 0, null, 1));
            map3.put("skippingDurations_end", new hk4.a("skippingDurations_end", "TEXT", true, 0, null, 1));
            hk4 hk4Var3 = new hk4("CinemanaDownloadItem", map3, new HashSet(0), new HashSet(0));
            hk4 hk4VarA3 = hk4.a(yh4Var, "CinemanaDownloadItem");
            if (!hk4Var3.equals(hk4VarA3)) {
                return new xt3.b(false, "CinemanaDownloadItem(com.shabakaty.cinemana.data.db.downloads.CinemanaDownloadItem).\n Expected:\n" + hk4Var3 + "\n Found:\n" + hk4VarA3);
            }
            HashMap map4 = new HashMap(3);
            map4.put("id", new hk4.a("id", "INTEGER", true, 1, null, 1));
            map4.put("name", new hk4.a("name", "TEXT", true, 0, null, 1));
            map4.put("image", new hk4.a("image", "TEXT", true, 0, null, 1));
            hk4 hk4Var4 = new hk4("DownloadsCollectionItem", map4, new HashSet(0), new HashSet(0));
            hk4 hk4VarA4 = hk4.a(yh4Var, "DownloadsCollectionItem");
            if (!hk4Var4.equals(hk4VarA4)) {
                return new xt3.b(false, "DownloadsCollectionItem(com.shabakaty.cinemana.data.db.downloads.DownloadsCollectionItem).\n Expected:\n" + hk4Var4 + "\n Found:\n" + hk4VarA4);
            }
            HashMap map5 = new HashMap(7);
            map5.put("id", new hk4.a("id", "TEXT", true, 1, null, 1));
            map5.put("parentId", new hk4.a("parentId", "TEXT", true, 0, null, 1));
            map5.put("downloadTaskId", new hk4.a("downloadTaskId", "INTEGER", true, 0, null, 1));
            map5.put("name", new hk4.a("name", "TEXT", true, 0, null, 1));
            map5.put("type", new hk4.a("type", "TEXT", true, 0, null, 1));
            map5.put("extension", new hk4.a("extension", "TEXT", true, 0, null, 1));
            map5.put("file", new hk4.a("file", "TEXT", true, 0, null, 1));
            hk4 hk4Var5 = new hk4("SubtitleDb", map5, new HashSet(0), new HashSet(0));
            hk4 hk4VarA5 = hk4.a(yh4Var, "SubtitleDb");
            if (!hk4Var5.equals(hk4VarA5)) {
                return new xt3.b(false, "SubtitleDb(com.shabakaty.cinemana.data.db.downloads.SubtitleDb).\n Expected:\n" + hk4Var5 + "\n Found:\n" + hk4VarA5);
            }
            HashMap map6 = new HashMap(5);
            map6.put("id", new hk4.a("id", "INTEGER", true, 1, null, 1));
            map6.put("parentId", new hk4.a("parentId", "TEXT", true, 0, null, 1));
            map6.put("start", new hk4.a("start", "INTEGER", true, 0, null, 1));
            map6.put("end", new hk4.a("end", "INTEGER", true, 0, null, 1));
            map6.put("controlLevel", new hk4.a("controlLevel", "TEXT", true, 0, null, 1));
            hk4 hk4Var6 = new hk4("SkippableSceneDB", map6, new HashSet(0), new HashSet(0));
            hk4 hk4VarA6 = hk4.a(yh4Var, "SkippableSceneDB");
            if (!hk4Var6.equals(hk4VarA6)) {
                return new xt3.b(false, "SkippableSceneDB(com.shabakaty.cinemana.data.db.downloads.SkippableSceneDB).\n Expected:\n" + hk4Var6 + "\n Found:\n" + hk4VarA6);
            }
            HashMap map7 = new HashMap(9);
            map7.put("id", new hk4.a("id", "TEXT", true, 1, null, 1));
            map7.put("videoId", new hk4.a("videoId", "TEXT", true, 0, null, 1));
            map7.put("liked", new hk4.a("liked", "INTEGER", true, 0, null, 1));
            map7.put("watched", new hk4.a("watched", "INTEGER", true, 0, null, 1));
            map7.put("annoying", new hk4.a("annoying", "INTEGER", true, 0, null, 1));
            map7.put("disLiked", new hk4.a("disLiked", "INTEGER", true, 0, null, 1));
            map7.put("favorite", new hk4.a("favorite", "INTEGER", true, 0, null, 1));
            map7.put("watchLater", new hk4.a("watchLater", "TEXT", true, 0, null, 1));
            map7.put("videoProgress", new hk4.a("videoProgress", "INTEGER", true, 0, null, 1));
            HashSet hashSet = new HashSet(1);
            hashSet.add(new hk4.b("video_model", "NO ACTION", "NO ACTION", Arrays.asList("videoId"), Arrays.asList("nb")));
            HashSet hashSet2 = new HashSet(1);
            hashSet2.add(new hk4.d("videoId", false, Arrays.asList("videoId")));
            hk4 hk4Var7 = new hk4("video_status", map7, hashSet, hashSet2);
            hk4 hk4VarA7 = hk4.a(yh4Var, "video_status");
            if (!hk4Var7.equals(hk4VarA7)) {
                return new xt3.b(false, "video_status(com.shabakaty.cinemana.data.db.videostatus.VideoStatusEntity).\n Expected:\n" + hk4Var7 + "\n Found:\n" + hk4VarA7);
            }
            HashMap map8 = new HashMap(60);
            map8.put("nb", new hk4.a("nb", "TEXT", true, 1, null, 1));
            map8.put("enTitle", new hk4.a("enTitle", "TEXT", true, 0, null, 1));
            map8.put("arTitle", new hk4.a("arTitle", "TEXT", true, 0, null, 1));
            map8.put("otherTitle", new hk4.a("otherTitle", "TEXT", true, 0, null, 1));
            map8.put("stars", new hk4.a("stars", "TEXT", true, 0, null, 1));
            map8.put("fileFile", new hk4.a("fileFile", "TEXT", true, 0, null, 1));
            map8.put("arContent", new hk4.a("arContent", "TEXT", true, 0, null, 1));
            map8.put("enContent", new hk4.a("enContent", "TEXT", true, 0, null, 1));
            map8.put("mDate", new hk4.a("mDate", "TEXT", true, 0, null, 1));
            map8.put("year", new hk4.a("year", "TEXT", true, 0, null, 1));
            map8.put("kind", new hk4.a("kind", "TEXT", true, 0, null, 1));
            map8.put("season", new hk4.a("season", "TEXT", true, 0, null, 1));
            map8.put("img", new hk4.a("img", "TEXT", true, 0, null, 1));
            map8.put("imgThumb", new hk4.a("imgThumb", "TEXT", true, 0, null, 1));
            map8.put("imgMediumThumb", new hk4.a("imgMediumThumb", "TEXT", true, 0, null, 1));
            map8.put("imgObjUrl", new hk4.a("imgObjUrl", "TEXT", true, 0, null, 1));
            map8.put("imgMediumThumbObjUrl", new hk4.a("imgMediumThumbObjUrl", "TEXT", true, 0, null, 1));
            map8.put("filmRating", new hk4.a("filmRating", "TEXT", true, 0, null, 1));
            map8.put("tvShowRating", new hk4.a("tvShowRating", "TEXT", true, 0, null, 1));
            map8.put("episodeNummer", new hk4.a("episodeNummer", "TEXT", true, 0, null, 1));
            map8.put("rate", new hk4.a("rate", "TEXT", true, 0, null, 1));
            map8.put("special", new hk4.a("special", "TEXT", true, 0, null, 1));
            map8.put("itemDate", new hk4.a("itemDate", "TEXT", true, 0, null, 1));
            map8.put("duration", new hk4.a("duration", "TEXT", true, 0, null, 1));
            map8.put("imdbUrlRef", new hk4.a("imdbUrlRef", "TEXT", true, 0, null, 1));
            map8.put("rootSeries", new hk4.a("rootSeries", "TEXT", true, 0, null, 1));
            map8.put("useParentImg", new hk4.a("useParentImg", "TEXT", true, 0, null, 1));
            map8.put("showComments", new hk4.a("showComments", "INTEGER", true, 0, null, 1));
            map8.put("episodeFlag", new hk4.a("episodeFlag", "TEXT", true, 0, null, 1));
            map8.put("trailer", new hk4.a("trailer", "TEXT", true, 0, null, 1));
            map8.put("mock", new hk4.a("mock", "INTEGER", true, 0, null, 1));
            map8.put("audioStreamNumber", new hk4.a("audioStreamNumber", "TEXT", true, 0, null, 1));
            map8.put("parentSkipping", new hk4.a("parentSkipping", "TEXT", true, 0, null, 1));
            map8.put("collectionID", new hk4.a("collectionID", "INTEGER", true, 0, null, 1));
            map8.put("deleted", new hk4.a("deleted", "TEXT", true, 0, null, 1));
            map8.put("imgThumbObjUrl", new hk4.a("imgThumbObjUrl", "TEXT", true, 0, null, 1));
            map8.put("ratingImg", new hk4.a("ratingImg", "TEXT", true, 0, null, 1));
            map8.put("arTranslationFilePath", new hk4.a("arTranslationFilePath", "TEXT", true, 0, null, 1));
            map8.put("hasIntroSkipping", new hk4.a("hasIntroSkipping", "INTEGER", true, 0, null, 1));
            map8.put("videoLikesNumber", new hk4.a("videoLikesNumber", "TEXT", true, 0, null, 1));
            map8.put("videoDisLikesNumber", new hk4.a("videoDisLikesNumber", "TEXT", true, 0, null, 1));
            map8.put("videoCommentsNumber", new hk4.a("videoCommentsNumber", "INTEGER", true, 0, null, 1));
            map8.put("videoViewsNumber", new hk4.a("videoViewsNumber", "TEXT", true, 0, null, 1));
            map8.put("itemOrderList", new hk4.a("itemOrderList", "TEXT", true, 0, null, 1));
            map8.put("listId", new hk4.a("listId", "TEXT", true, 0, null, 1));
            map8.put("listSortOrder", new hk4.a("listSortOrder", "TEXT", true, 0, null, 1));
            map8.put("castable", new hk4.a("castable", "TEXT", true, 0, null, 1));
            map8.put("publishDate", new hk4.a("publishDate", "TEXT", true, 0, null, 1));
            map8.put("episodeDesc", new hk4.a("episodeDesc", "TEXT", true, 0, null, 1));
            map8.put("qualityName", new hk4.a("qualityName", "TEXT", true, 0, null, 1));
            map8.put("customArTitle", new hk4.a("customArTitle", "TEXT", true, 0, null, 1));
            map8.put("customEnTitle", new hk4.a("customEnTitle", "TEXT", true, 0, null, 1));
            map8.put("finished", new hk4.a("finished", "INTEGER", true, 0, null, 1));
            map8.put("url", new hk4.a("url", "TEXT", true, 0, null, 1));
            map8.put("downloadTaskId", new hk4.a("downloadTaskId", "INTEGER", true, 0, null, 1));
            map8.put("downloadedTime", new hk4.a("downloadedTime", "INTEGER", true, 0, null, 1));
            map8.put("size", new hk4.a("size", "TEXT", true, 0, null, 1));
            map8.put("description", new hk4.a("description", "TEXT", true, 0, null, 1));
            map8.put("addedToWatchLater", new hk4.a("addedToWatchLater", "INTEGER", true, 0, null, 1));
            map8.put("watched", new hk4.a("watched", "INTEGER", true, 0, null, 1));
            HashSet hashSet3 = new HashSet(0);
            HashSet hashSet4 = new HashSet(1);
            hashSet4.add(new hk4.d("nb", false, Arrays.asList("nb")));
            hk4 hk4Var8 = new hk4("video_model", map8, hashSet3, hashSet4);
            hk4 hk4VarA8 = hk4.a(yh4Var, "video_model");
            if (!hk4Var8.equals(hk4VarA8)) {
                return new xt3.b(false, "video_model(com.shabakaty.cinemana.data.db.videomodel.VideoModelEntity).\n Expected:\n" + hk4Var8 + "\n Found:\n" + hk4VarA8);
            }
            HashMap map9 = new HashMap(14);
            map9.put("userId", new hk4.a("userId", "TEXT", true, 1, null, 1));
            map9.put("filter_parentalLevel", new hk4.a("filter_parentalLevel", "TEXT", true, 0, null, 1));
            map9.put("filter_skipInAppropriateScenes", new hk4.a("filter_skipInAppropriateScenes", "INTEGER", true, 0, null, 1));
            map9.put("filter_showContentWithNoSubtitle", new hk4.a("filter_showContentWithNoSubtitle", "INTEGER", true, 0, null, 1));
            map9.put("app_language", new hk4.a("app_language", "TEXT", true, 0, null, 1));
            map9.put("app_theme", new hk4.a("app_theme", "INTEGER", true, 0, null, 1));
            map9.put("app_seekPeriod", new hk4.a("app_seekPeriod", "INTEGER", true, 0, null, 1));
            map9.put("app_showSubtitles", new hk4.a("app_showSubtitles", "INTEGER", true, 0, null, 1));
            map9.put("subtitles_subtitleColor", new hk4.a("subtitles_subtitleColor", "INTEGER", true, 0, null, 1));
            map9.put("subtitles_subtitleEdgeColor", new hk4.a("subtitles_subtitleEdgeColor", "INTEGER", true, 0, null, 1));
            map9.put("subtitles_subtitleBackgroundColor", new hk4.a("subtitles_subtitleBackgroundColor", "INTEGER", true, 0, null, 1));
            map9.put("subtitles_subtitleEdge", new hk4.a("subtitles_subtitleEdge", "INTEGER", true, 0, null, 1));
            map9.put("subtitles_subtitleFontScale", new hk4.a("subtitles_subtitleFontScale", "REAL", true, 0, null, 1));
            map9.put("subtitles_subtitleFontFamily", new hk4.a("subtitles_subtitleFontFamily", "TEXT", true, 0, null, 1));
            hk4 hk4Var9 = new hk4("settings", map9, new HashSet(0), new HashSet(0));
            hk4 hk4VarA9 = hk4.a(yh4Var, "settings");
            if (hk4Var9.equals(hk4VarA9)) {
                return new xt3.b(true, null);
            }
            return new xt3.b(false, "settings(com.shabakaty.cinemana.data.db.settings.SettingsEntity).\n Expected:\n" + hk4Var9 + "\n Found:\n" + hk4VarA9);
        }
    }

    @Override // com.shabakaty.downloader.vt3
    public v32 c() {
        return new v32(this, new HashMap(0), new HashMap(0), "users", "search_table", "CinemanaDownloadItem", "DownloadsCollectionItem", "SubtitleDb", "SkippableSceneDB", "video_status", "video_model", "settings");
    }

    @Override // com.shabakaty.downloader.vt3
    public zh4 d(bm0 bm0Var) {
        xt3 xt3Var = new xt3(bm0Var, new a(5), "663afd1177d1ff597ddac9194d6e0a62", "69bbc82da3b9d093633e2fa09918a4b0");
        Context context = bm0Var.b;
        String str = bm0Var.c;
        if (context == null) {
            throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
        }
        return bm0Var.a.a(new zh4.b(context, str, xt3Var, false));
    }

    @Override // com.shabakaty.downloader.vt3
    public List<ht2> e() {
        return Arrays.asList(new ht2[0]);
    }

    @Override // com.shabakaty.downloader.vt3
    public Set<Class<? extends wf>> f() {
        return new HashSet();
    }

    @Override // com.shabakaty.downloader.vt3
    public Map<Class<?>, List<Class<?>>> g() {
        HashMap map = new HashMap();
        map.put(vy3.class, Collections.emptyList());
        map.put(jw0.class, Collections.emptyList());
        map.put(s25.class, Collections.emptyList());
        map.put(g25.class, Collections.emptyList());
        map.put(u24.class, Collections.emptyList());
        return map;
    }

    @Override // com.shabakaty.cinemana.data.db.AppDatabase
    public jw0 p() {
        jw0 jw0Var;
        if (this.o != null) {
            return this.o;
        }
        synchronized (this) {
            if (this.o == null) {
                this.o = new kw0(this);
            }
            jw0Var = this.o;
        }
        return jw0Var;
    }

    @Override // com.shabakaty.cinemana.data.db.AppDatabase
    public vy3 q() {
        vy3 vy3Var;
        if (this.n != null) {
            return this.n;
        }
        synchronized (this) {
            if (this.n == null) {
                this.n = new wy3(this);
            }
            vy3Var = this.n;
        }
        return vy3Var;
    }

    @Override // com.shabakaty.cinemana.data.db.AppDatabase
    public u24 r() {
        u24 u24Var;
        if (this.r != null) {
            return this.r;
        }
        synchronized (this) {
            if (this.r == null) {
                this.r = new v24(this);
            }
            u24Var = this.r;
        }
        return u24Var;
    }

    @Override // com.shabakaty.cinemana.data.db.AppDatabase
    public g25 s() {
        g25 g25Var;
        if (this.q != null) {
            return this.q;
        }
        synchronized (this) {
            if (this.q == null) {
                this.q = new h25(this);
            }
            g25Var = this.q;
        }
        return g25Var;
    }

    @Override // com.shabakaty.cinemana.data.db.AppDatabase
    public s25 t() {
        s25 s25Var;
        if (this.p != null) {
            return this.p;
        }
        synchronized (this) {
            if (this.p == null) {
                this.p = new t25(this);
            }
            s25Var = this.p;
        }
        return s25Var;
    }
}
