.class public final Lcom/shabakaty/downloader/i63;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/i63$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/i63$a;

.field public final s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/i63$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/i63;->r:Lcom/shabakaty/downloader/i63$a;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/i63;->s:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/i63;->r:Lcom/shabakaty/downloader/i63$a;

    iget v1, p0, Lcom/shabakaty/downloader/i63;->s:I

    invoke-interface {v0, v1, p1}, Lcom/shabakaty/downloader/i63$a;->b(ILandroid/view/View;)V

    return-void
.end method
