.class public final Lcom/shabakaty/downloader/sv$a;
.super Ljava/lang/Object;
.source "CaptureRequestOptions.java"

# interfaces
.implements Lcom/shabakaty/downloader/p81;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/sv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/p81<",
        "Lcom/shabakaty/downloader/sv;",
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

    iput-object v0, p0, Lcom/shabakaty/downloader/sv$a;->a:Lcom/shabakaty/downloader/yv2;

    return-void
.end method

.method public static d(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/sv$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sv$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/sv$a;-><init>()V

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/rv;

    invoke-direct {v1, v0, p0}, Lcom/shabakaty/downloader/rv;-><init>(Lcom/shabakaty/downloader/sv$a;Lcom/shabakaty/downloader/o90;)V

    const-string v2, "camera2.captureRequest.option."

    invoke-interface {p0, v2, v1}, Lcom/shabakaty/downloader/o90;->t(Ljava/lang/String;Lcom/shabakaty/downloader/o90$b;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/sv;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/sv;

    iget-object v1, p0, Lcom/shabakaty/downloader/sv$a;->a:Lcom/shabakaty/downloader/yv2;

    invoke-static {v1}, Lcom/shabakaty/downloader/k83;->x(Lcom/shabakaty/downloader/o90;)Lcom/shabakaty/downloader/k83;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/sv;-><init>(Lcom/shabakaty/downloader/o90;)V

    return-object v0
.end method

.method public b()Lcom/shabakaty/downloader/wv2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/sv$a;->a:Lcom/shabakaty/downloader/yv2;

    return-object v0
.end method
