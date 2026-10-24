.class public final Lcom/shabakaty/downloader/zl1;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.java"

# interfaces
.implements Lcom/shabakaty/downloader/zh4$c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/zh4$b;)Lcom/shabakaty/downloader/zh4;
    .locals 4

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/yl1;

    iget-object v1, p1, Lcom/shabakaty/downloader/zh4$b;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/shabakaty/downloader/zh4$b;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/shabakaty/downloader/zh4$b;->c:Lcom/shabakaty/downloader/zh4$a;

    iget-boolean p1, p1, Lcom/shabakaty/downloader/zh4$b;->d:Z

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/yl1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/shabakaty/downloader/zh4$a;Z)V

    return-object v0
.end method
