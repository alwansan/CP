.class public final Lcom/shabakaty/downloader/j63;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/j63$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/j63$a;

.field public final s:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j63$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/j63;->r:Lcom/shabakaty/downloader/j63$a;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/j63;->s:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/j63;->r:Lcom/shabakaty/downloader/j63$a;

    iget v0, p0, Lcom/shabakaty/downloader/j63;->s:I

    check-cast p1, Lcom/shabakaty/downloader/o41;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->S:Lcom/shabakaty/downloader/p41;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_8

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/a40;->b()V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->S:Lcom/shabakaty/downloader/p41;

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_8

    .line 5
    invoke-interface {p1}, Lcom/shabakaty/downloader/p41;->c()V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->S:Lcom/shabakaty/downloader/p41;

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_8

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/p41;->e()V

    goto :goto_0

    .line 8
    :cond_6
    iget-object p1, p1, Lcom/shabakaty/downloader/n41;->S:Lcom/shabakaty/downloader/p41;

    if-eqz p1, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-eqz v1, :cond_8

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/p41;->e()V

    :cond_8
    :goto_0
    return-void
.end method
