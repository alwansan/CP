.class public Lcom/shabakaty/downloader/u45;
.super Lcom/shabakaty/downloader/bt1;
.source "VirtualLayout.java"


# instance fields
.field public A0:I

.field public B0:Lcom/shabakaty/downloader/hl$a;

.field public C0:Lcom/shabakaty/downloader/hl$b;

.field public s0:I

.field public t0:I

.field public u0:I

.field public v0:I

.field public w0:I

.field public x0:I

.field public y0:Z

.field public z0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/bt1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/u45;->s0:I

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/u45;->t0:I

    .line 4
    iput v0, p0, Lcom/shabakaty/downloader/u45;->u0:I

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/u45;->v0:I

    .line 6
    iput v0, p0, Lcom/shabakaty/downloader/u45;->w0:I

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/u45;->x0:I

    .line 8
    iput-boolean v0, p0, Lcom/shabakaty/downloader/u45;->y0:Z

    .line 9
    iput v0, p0, Lcom/shabakaty/downloader/u45;->z0:I

    .line 10
    iput v0, p0, Lcom/shabakaty/downloader/u45;->A0:I

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/hl$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hl$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/shabakaty/downloader/u45;->C0:Lcom/shabakaty/downloader/hl$b;

    return-void
.end method


# virtual methods
.method public U(IIII)V
    .locals 0

    return-void
.end method

.method public V(Lcom/shabakaty/downloader/ec0;IIII)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/u45;->C0:Lcom/shabakaty/downloader/hl$b;

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ec0;->U:Lcom/shabakaty/downloader/ec0;

    if-eqz v1, :cond_0

    .line 3
    check-cast v1, Lcom/shabakaty/downloader/fc0;

    .line 4
    iget-object v0, v1, Lcom/shabakaty/downloader/fc0;->u0:Lcom/shabakaty/downloader/hl$b;

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/u45;->C0:Lcom/shabakaty/downloader/hl$b;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iput p2, v1, Lcom/shabakaty/downloader/hl$a;->a:I

    .line 7
    iput p4, v1, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 8
    iput p3, v1, Lcom/shabakaty/downloader/hl$a;->c:I

    .line 9
    iput p5, v1, Lcom/shabakaty/downloader/hl$a;->d:I

    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$a;)V

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iget p2, p2, Lcom/shabakaty/downloader/hl$a;->e:I

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 12
    iget-object p2, p0, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iget p2, p2, Lcom/shabakaty/downloader/hl$a;->f:I

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 13
    iget-object p2, p0, Lcom/shabakaty/downloader/u45;->B0:Lcom/shabakaty/downloader/hl$a;

    iget-boolean p3, p2, Lcom/shabakaty/downloader/hl$a;->h:Z

    .line 14
    iput-boolean p3, p1, Lcom/shabakaty/downloader/ec0;->D:Z

    .line 15
    iget p2, p2, Lcom/shabakaty/downloader/hl$a;->g:I

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/ec0;->I(I)V

    return-void
.end method

.method public a(Lcom/shabakaty/downloader/fc0;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lcom/shabakaty/downloader/bt1;->r0:I

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bt1;->q0:[Lcom/shabakaty/downloader/ec0;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/shabakaty/downloader/ec0;->F:Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
