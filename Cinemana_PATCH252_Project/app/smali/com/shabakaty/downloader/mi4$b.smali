.class public Lcom/shabakaty/downloader/mi4$b;
.super Lcom/shabakaty/downloader/hp0;
.source "SurfaceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/mi4;-><init>(Landroid/util/Size;Lcom/shabakaty/downloader/vt;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Lcom/shabakaty/downloader/mi4;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/mi4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/mi4$b;->i:Lcom/shabakaty/downloader/mi4;

    invoke-direct {p0}, Lcom/shabakaty/downloader/hp0;-><init>()V

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
    iget-object v0, p0, Lcom/shabakaty/downloader/mi4$b;->i:Lcom/shabakaty/downloader/mi4;

    iget-object v0, v0, Lcom/shabakaty/downloader/mi4;->d:Lcom/shabakaty/downloader/pi2;

    return-object v0
.end method
