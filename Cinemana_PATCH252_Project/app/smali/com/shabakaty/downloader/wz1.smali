.class public final Lcom/shabakaty/downloader/wz1;
.super Lcom/shabakaty/downloader/hp0;
.source "ImmediateSurface.java"


# instance fields
.field public final i:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/hp0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wz1;->i:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public g()Lcom/shabakaty/downloader/pi2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wz1;->i:Landroid/view/Surface;

    invoke-static {v0}, Lcom/shabakaty/downloader/ko1;->c(Ljava/lang/Object;)Lcom/shabakaty/downloader/pi2;

    move-result-object v0

    return-object v0
.end method
