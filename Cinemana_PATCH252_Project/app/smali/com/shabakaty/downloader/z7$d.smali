.class public Lcom/shabakaty/downloader/z7$d;
.super Lcom/shabakaty/downloader/z7$g;
.source "AnimatedStateListDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/z7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/a8;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a8;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/z7$g;-><init>(Lcom/shabakaty/downloader/z7$a;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/z7$d;->a:Lcom/shabakaty/downloader/a8;

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z7$d;->a:Lcom/shabakaty/downloader/a8;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a8;->start()V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/z7$d;->a:Lcom/shabakaty/downloader/a8;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/a8;->stop()V

    return-void
.end method
