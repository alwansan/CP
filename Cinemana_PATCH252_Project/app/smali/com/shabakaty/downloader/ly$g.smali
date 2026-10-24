.class public Lcom/shabakaty/downloader/ly$g;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ly;->l(Landroid/view/ViewGroup;Lcom/shabakaty/downloader/kq4;Lcom/shabakaty/downloader/kq4;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Lcom/shabakaty/downloader/ly$i;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ly;Lcom/shabakaty/downloader/ly$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/ly$g;->mViewBounds:Lcom/shabakaty/downloader/ly$i;

    return-void
.end method
