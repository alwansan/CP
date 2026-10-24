.class public final Landroidx/camera/camera2/Camera2Config$DefaultProvider;
.super Ljava/lang/Object;
.source "Camera2Config.java"

# interfaces
.implements Lcom/shabakaty/downloader/uu$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraXConfig()Lcom/shabakaty/downloader/uu;
    .locals 7

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/fs;->a:Lcom/shabakaty/downloader/fs;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/es;->a:Lcom/shabakaty/downloader/es;

    .line 3
    sget-object v2, Lcom/shabakaty/downloader/gs;->a:Lcom/shabakaty/downloader/gs;

    .line 4
    new-instance v3, Lcom/shabakaty/downloader/uu$a;

    invoke-direct {v3}, Lcom/shabakaty/downloader/uu$a;-><init>()V

    .line 5
    iget-object v4, v3, Lcom/shabakaty/downloader/uu$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 6
    sget-object v5, Lcom/shabakaty/downloader/uu;->s:Lcom/shabakaty/downloader/o90$a;

    .line 7
    sget-object v6, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {v4, v5, v6, v0}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 8
    iget-object v0, v3, Lcom/shabakaty/downloader/uu$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/uu;->t:Lcom/shabakaty/downloader/o90$a;

    .line 10
    invoke-virtual {v0, v4, v6, v1}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 11
    iget-object v0, v3, Lcom/shabakaty/downloader/uu$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 12
    sget-object v1, Lcom/shabakaty/downloader/uu;->u:Lcom/shabakaty/downloader/o90$a;

    .line 13
    invoke-virtual {v0, v1, v6, v2}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    .line 14
    new-instance v0, Lcom/shabakaty/downloader/uu;

    iget-object v1, v3, Lcom/shabakaty/downloader/uu$a;->a:Lcom/shabakaty/downloader/yv2;

    invoke-static {v1}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/uu;-><init>(Lcom/shabakaty/downloader/k83;)V

    return-object v0
.end method
