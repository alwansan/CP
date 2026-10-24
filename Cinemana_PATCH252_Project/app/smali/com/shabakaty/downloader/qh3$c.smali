.class public final Lcom/shabakaty/downloader/qh3$c;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qh3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final r:I

.field public final synthetic s:Lcom/shabakaty/downloader/qh3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qh3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qh3$c;->s:Lcom/shabakaty/downloader/qh3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lcom/shabakaty/downloader/qh3$c;->r:I

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3$c;->s:Lcom/shabakaty/downloader/qh3;

    iget v1, p0, Lcom/shabakaty/downloader/qh3$c;->r:I

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/bx3;->y()V

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/qh3;->B:Lcom/shabakaty/downloader/ij2;

    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->u:Lcom/shabakaty/downloader/gj2;

    iget v0, v0, Lcom/shabakaty/downloader/qh3;->S:I

    check-cast v2, Lcom/shabakaty/downloader/po0;

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/po0;->b(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ij2;->f(I)V

    return-void
.end method

.method public d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3$c;->s:Lcom/shabakaty/downloader/qh3;

    iget v1, p0, Lcom/shabakaty/downloader/qh3$c;->r:I

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qh3;->x()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v1, v2, v1

    iget-boolean v0, v0, Lcom/shabakaty/downloader/qh3;->b0:Z

    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/bx3;->w(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3$c;->s:Lcom/shabakaty/downloader/qh3;

    iget v1, p0, Lcom/shabakaty/downloader/qh3$c;->r:I

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qh3;->x()Z

    move-result v2

    const/4 v3, -0x3

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qh3;->s(I)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v2, v2, v1

    iget-boolean v4, v0, Lcom/shabakaty/downloader/qh3;->b0:Z

    .line 5
    invoke-virtual {v2, p1, p2, p3, v4}, Lcom/shabakaty/downloader/bx3;->C(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;IZ)I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qh3;->u(I)V

    :cond_1
    move v3, p1

    :goto_0
    return v3
.end method

.method public i(J)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qh3$c;->s:Lcom/shabakaty/downloader/qh3;

    iget v1, p0, Lcom/shabakaty/downloader/qh3$c;->r:I

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qh3;->x()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qh3;->s(I)V

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/qh3;->J:[Lcom/shabakaty/downloader/bx3;

    aget-object v2, v2, v1

    .line 5
    iget-boolean v3, v0, Lcom/shabakaty/downloader/qh3;->b0:Z

    invoke-virtual {v2, p1, p2, v3}, Lcom/shabakaty/downloader/bx3;->s(JZ)I

    move-result p1

    .line 6
    invoke-virtual {v2, p1}, Lcom/shabakaty/downloader/bx3;->I(I)V

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/qh3;->u(I)V

    :cond_1
    :goto_0
    return p1
.end method
