.class public Lcom/shabakaty/downloader/hk2;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hk2$c;,
        Lcom/shabakaty/downloader/hk2$b;
    }
.end annotation


# static fields
.field public static final d:Lcom/shabakaty/downloader/hk2$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/hk2$b;

.field public c:Lcom/shabakaty/downloader/xa1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/hk2$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/hk2$c;-><init>(Lcom/shabakaty/downloader/hk2$a;)V

    sput-object v0, Lcom/shabakaty/downloader/hk2;->d:Lcom/shabakaty/downloader/hk2$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/hk2$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/hk2;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/hk2;->b:Lcom/shabakaty/downloader/hk2$b;

    .line 4
    sget-object p1, Lcom/shabakaty/downloader/hk2;->d:Lcom/shabakaty/downloader/hk2$c;

    iput-object p1, p0, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/hk2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/hk2$b;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/shabakaty/downloader/hk2;->a:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/hk2;->b:Lcom/shabakaty/downloader/hk2$b;

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/hk2;->d:Lcom/shabakaty/downloader/hk2$c;

    iput-object p1, p0, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    .line 10
    invoke-virtual {p0, p3}, Lcom/shabakaty/downloader/hk2;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    invoke-interface {v0}, Lcom/shabakaty/downloader/xa1;->a()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/hk2;->d:Lcom/shabakaty/downloader/hk2$c;

    iput-object v0, p0, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/hk2;->a:Landroid/content/Context;

    const-string v1, "com.crashlytics.CollectCustomLogs"

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/n70;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x3

    const-string v0, "FirebaseCrashlytics"

    .line 5
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v1, "Preferences requested no custom logs. Aborting log file creation."

    .line 6
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void

    :cond_2
    const-string v0, "crashlytics-userlog-"

    const-string v1, ".temp"

    .line 7
    invoke-static {v0, p1, v1}, Lcom/shabakaty/downloader/jp2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/shabakaty/downloader/hk2;->b:Lcom/shabakaty/downloader/hk2$b;

    check-cast v1, Lcom/shabakaty/downloader/zf0$c;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v2, Ljava/io/File;

    iget-object v1, v1, Lcom/shabakaty/downloader/zf0$c;->a:Lcom/shabakaty/downloader/sm6;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sm6;->b()Ljava/io/File;

    move-result-object v1

    const-string v3, "log-files"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 12
    :cond_3
    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 13
    new-instance v1, Lcom/shabakaty/downloader/wk3;

    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/wk3;-><init>(Ljava/io/File;I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/hk2;->c:Lcom/shabakaty/downloader/xa1;

    return-void
.end method
