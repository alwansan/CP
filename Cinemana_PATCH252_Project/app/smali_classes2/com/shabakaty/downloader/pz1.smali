.class public Lcom/shabakaty/downloader/pz1;
.super Ljava/lang/Object;
.source "ImageStreamUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic r:Z

.field public final synthetic s:Lzendesk/belvedere/l;


# direct methods
.method public constructor <init>(Lzendesk/belvedere/l;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/pz1;->s:Lzendesk/belvedere/l;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/pz1;->r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/pz1;->r:Z

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/pz1;->s:Lzendesk/belvedere/l;

    .line 3
    iget-object p1, p1, Lzendesk/belvedere/l;->k:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/pz1;->s:Lzendesk/belvedere/l;

    invoke-virtual {p1}, Lzendesk/belvedere/l;->dismiss()V

    :goto_0
    return-void
.end method
