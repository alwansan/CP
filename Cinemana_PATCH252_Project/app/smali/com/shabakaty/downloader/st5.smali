.class public final Lcom/shabakaty/downloader/st5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ce5;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/i81;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i81;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/st5;->r:Lcom/shabakaty/downloader/i81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final o0(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/st5;->r:Lcom/shabakaty/downloader/i81;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/i81;->U:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/st5;->r:Lcom/shabakaty/downloader/i81;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/i81;->T:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/st5;->r:Lcom/shabakaty/downloader/i81;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/i81;->T:Landroid/widget/ImageView;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method
