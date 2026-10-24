.class public Lcom/shabakaty/downloader/v7$a;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "Animatable2Compat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/v7;->getPlatformCallback()Landroid/graphics/drawable/Animatable2$AnimationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/v7;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/v7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/v7$a;->a:Lcom/shabakaty/downloader/v7;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v7$a;->a:Lcom/shabakaty/downloader/v7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v7;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onAnimationStart(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/v7$a;->a:Lcom/shabakaty/downloader/v7;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/v7;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
