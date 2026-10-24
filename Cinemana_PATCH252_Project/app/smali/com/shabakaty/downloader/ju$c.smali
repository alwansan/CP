.class public Lcom/shabakaty/downloader/ju$c;
.super Ljava/lang/Object;
.source "CameraUseCaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/ju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/hx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hx4<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hx4;Lcom/shabakaty/downloader/hx4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;",
            "Lcom/shabakaty/downloader/hx4<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ju$c;->a:Lcom/shabakaty/downloader/hx4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ju$c;->b:Lcom/shabakaty/downloader/hx4;

    return-void
.end method
