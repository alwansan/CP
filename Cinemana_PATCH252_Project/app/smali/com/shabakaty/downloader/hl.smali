.class public Lcom/shabakaty/downloader/hl;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/hl$a;,
        Lcom/shabakaty/downloader/hl$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/ec0;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/hl$a;

.field public c:Lcom/shabakaty/downloader/fc0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fc0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/hl;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/hl$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/hl$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/hl;->c:Lcom/shabakaty/downloader/fc0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/hl$b;Lcom/shabakaty/downloader/ec0;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/hl$a;->a:I

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ec0;->t()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/hl$a;->c:I

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    invoke-virtual {p2}, Lcom/shabakaty/downloader/ec0;->n()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/hl$a;->d:I

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shabakaty/downloader/hl$a;->i:Z

    .line 6
    iput p3, v0, Lcom/shabakaty/downloader/hl$a;->j:I

    .line 7
    iget p3, v0, Lcom/shabakaty/downloader/hl$a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne p3, v3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 8
    :goto_0
    iget v4, v0, Lcom/shabakaty/downloader/hl$a;->b:I

    if-ne v4, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    if-eqz p3, :cond_2

    .line 9
    iget p3, p2, Lcom/shabakaty/downloader/ec0;->X:F

    cmpl-float p3, p3, v4

    if-lez p3, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 10
    iget v3, p2, Lcom/shabakaty/downloader/ec0;->X:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x4

    if-eqz p3, :cond_4

    .line 11
    iget-object p3, p2, Lcom/shabakaty/downloader/ec0;->s:[I

    aget p3, p3, v1

    if-ne p3, v4, :cond_4

    .line 12
    iput v2, v0, Lcom/shabakaty/downloader/hl$a;->a:I

    :cond_4
    if-eqz v3, :cond_5

    .line 13
    iget-object p3, p2, Lcom/shabakaty/downloader/ec0;->s:[I

    aget p3, p3, v2

    if-ne p3, v4, :cond_5

    .line 14
    iput v2, v0, Lcom/shabakaty/downloader/hl$a;->b:I

    .line 15
    :cond_5
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b(Lcom/shabakaty/downloader/ec0;Lcom/shabakaty/downloader/hl$a;)V

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    iget p1, p1, Lcom/shabakaty/downloader/hl$a;->e:I

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ec0;->Q(I)V

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    iget p1, p1, Lcom/shabakaty/downloader/hl$a;->f:I

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ec0;->L(I)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    iget-boolean p3, p1, Lcom/shabakaty/downloader/hl$a;->h:Z

    .line 19
    iput-boolean p3, p2, Lcom/shabakaty/downloader/ec0;->D:Z

    .line 20
    iget p1, p1, Lcom/shabakaty/downloader/hl$a;->g:I

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/ec0;->I(I)V

    .line 21
    iget-object p1, p0, Lcom/shabakaty/downloader/hl;->b:Lcom/shabakaty/downloader/hl$a;

    iput v1, p1, Lcom/shabakaty/downloader/hl$a;->j:I

    .line 22
    iget-boolean p1, p1, Lcom/shabakaty/downloader/hl$a;->i:Z

    return p1
.end method

.method public final b(Lcom/shabakaty/downloader/fc0;III)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/shabakaty/downloader/ec0;->c0:I

    .line 2
    iget v1, p1, Lcom/shabakaty/downloader/ec0;->d0:I

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ec0;->O(I)V

    .line 4
    invoke-virtual {p1, v2}, Lcom/shabakaty/downloader/ec0;->N(I)V

    .line 5
    iput p3, p1, Lcom/shabakaty/downloader/ec0;->V:I

    .line 6
    iget v2, p1, Lcom/shabakaty/downloader/ec0;->c0:I

    if-ge p3, v2, :cond_0

    .line 7
    iput v2, p1, Lcom/shabakaty/downloader/ec0;->V:I

    .line 8
    :cond_0
    iput p4, p1, Lcom/shabakaty/downloader/ec0;->W:I

    .line 9
    iget p3, p1, Lcom/shabakaty/downloader/ec0;->d0:I

    if-ge p4, p3, :cond_1

    .line 10
    iput p3, p1, Lcom/shabakaty/downloader/ec0;->W:I

    .line 11
    :cond_1
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ec0;->O(I)V

    .line 12
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/ec0;->N(I)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/hl;->c:Lcom/shabakaty/downloader/fc0;

    .line 14
    iput p2, p1, Lcom/shabakaty/downloader/fc0;->t0:I

    .line 15
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fc0;->T()V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/fc0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/hl;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/o65;->q0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ec0;

    .line 4
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec0;->o()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ec0;->s()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/shabakaty/downloader/hl;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fc0;->b0()V

    return-void
.end method
