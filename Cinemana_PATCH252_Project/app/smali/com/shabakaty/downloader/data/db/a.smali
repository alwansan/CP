.class public Lcom/shabakaty/downloader/data/db/a;
.super Lcom/shabakaty/downloader/ht2;
.source "DownloadsDatabase_AutoMigration_1_2_Impl.java"


# instance fields
.field public final c:Lcom/shabakaty/downloader/wf;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/shabakaty/downloader/ht2;-><init>(II)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/data/db/DownloadsDatabase$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/data/db/DownloadsDatabase$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/data/db/a;->c:Lcom/shabakaty/downloader/wf;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `_new_Downloads` (`task_id` INTEGER NOT NULL, `external_id` TEXT NOT NULL, `progress_bytes` INTEGER NOT NULL, `title` TEXT NOT NULL, `url` TEXT NOT NULL, `img` TEXT NOT NULL, `path` TEXT NOT NULL, `size_bytes` INTEGER NOT NULL, `status` INTEGER NOT NULL, `last_updated` TEXT NOT NULL, PRIMARY KEY(`task_id`, `external_id`))"

    .line 1
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "INSERT INTO `_new_Downloads` (path,img,last_updated,size_bytes,progress_bytes,task_id,external_id,title,url,status) SELECT path,img,last_updated,size_bytes,progress_bytes,task_id,external_id,title,url,status FROM `Downloads`"

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "DROP TABLE `Downloads`"

    .line 3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE `_new_Downloads` RENAME TO `Downloads`"

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS `id` ON `Downloads` (`task_id`, `external_id`)"

    .line 5
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/data/db/a;->c:Lcom/shabakaty/downloader/wf;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/wf;->a(Lcom/shabakaty/downloader/yh4;)V

    return-void
.end method
