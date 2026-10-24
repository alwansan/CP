.class public final Lcom/shabakaty/downloader/js$a;
.super Ljava/lang/Object;
.source "Camera2ImplConfig.java"

# interfaces
.implements Lcom/shabakaty/downloader/p81;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/js;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/p81<",
        "Lcom/shabakaty/downloader/js;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/yv2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/yv2;->y()Lcom/shabakaty/downloader/yv2;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/js;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/js;

    iget-object v1, p0, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    invoke-static {v1}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/js;-><init>(Lcom/shabakaty/downloader/o90;)V

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/wv2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    return-object v0
.end method

.method public d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/shabakaty/downloader/js$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TValueT;>;TValueT;)",
            "Lcom/shabakaty/downloader/js$a;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/js;->s:Lcom/shabakaty/downloader/o90$a;

    const-string v0, "camera2.captureRequest.option."

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/fg;

    invoke-direct {v2, v0, v1, p1}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/js$a;->a:Lcom/shabakaty/downloader/yv2;

    .line 5
    sget-object v0, Lcom/shabakaty/downloader/o90$c;->t:Lcom/shabakaty/downloader/o90$c;

    invoke-virtual {p1, v2, v0, p2}, Lcom/shabakaty/downloader/yv2;->A(Lcom/shabakaty/downloader/o90$a;Lcom/shabakaty/downloader/o90$c;Ljava/lang/Object;)V

    return-object p0
.end method
