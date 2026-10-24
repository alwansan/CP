.class public final Lcom/shabakaty/downloader/d00$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/shabakaty/downloader/dx3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/d00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/d00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/d00<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/bx3;

.field public final t:I

.field public u:Z

.field public final synthetic v:Lcom/shabakaty/downloader/d00;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d00;Lcom/shabakaty/downloader/d00;Lcom/shabakaty/downloader/bx3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d00<",
            "TT;>;",
            "Lcom/shabakaty/downloader/bx3;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/d00$a;->r:Lcom/shabakaty/downloader/d00;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    .line 4
    iput p4, p0, Lcom/shabakaty/downloader/d00$a;->t:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/d00$a;->u:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    .line 3
    iget-object v1, v0, Lcom/shabakaty/downloader/d00;->x:Lcom/shabakaty/downloader/yq2$a;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/d00;->s:[I

    .line 5
    iget v3, p0, Lcom/shabakaty/downloader/d00$a;->t:I

    aget v2, v2, v3

    .line 6
    iget-object v4, v0, Lcom/shabakaty/downloader/d00;->t:[Lcom/shabakaty/downloader/wh1;

    .line 7
    aget-object v3, v4, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    iget-wide v6, v0, Lcom/shabakaty/downloader/d00;->K:J

    .line 9
    invoke-virtual/range {v1 .. v7}, Lcom/shabakaty/downloader/yq2$a;->b(ILcom/shabakaty/downloader/wh1;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/d00$a;->u:Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/d00;->u:[Z

    .line 3
    iget v1, p0, Lcom/shabakaty/downloader/d00$a;->t:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/d00;->u:[Z

    .line 6
    iget v1, p0, Lcom/shabakaty/downloader/d00$a;->t:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    iget-object v1, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/d00;->N:Z

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/bx3;->w(Z)Z

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/d00;->M:Lcom/shabakaty/downloader/oj;

    if-eqz v0, :cond_1

    .line 4
    iget v2, p0, Lcom/shabakaty/downloader/d00$a;->t:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00$a;->a()V

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    iget-object v1, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/d00;->N:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/shabakaty/downloader/bx3;->C(Lcom/shabakaty/downloader/yh1;Lcom/shabakaty/downloader/bn0;IZ)I

    move-result p1

    return p1
.end method

.method public i(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/d00;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    iget-object v1, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    iget-boolean v1, v1, Lcom/shabakaty/downloader/d00;->N:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/shabakaty/downloader/bx3;->s(JZ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/shabakaty/downloader/d00$a;->v:Lcom/shabakaty/downloader/d00;

    .line 4
    iget-object p2, p2, Lcom/shabakaty/downloader/d00;->M:Lcom/shabakaty/downloader/oj;

    if-eqz p2, :cond_1

    .line 5
    iget v0, p0, Lcom/shabakaty/downloader/d00$a;->t:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/oj;->e(I)I

    move-result p2

    iget-object v0, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bx3;->q()I

    move-result v0

    sub-int/2addr p2, v0

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/shabakaty/downloader/d00$a;->s:Lcom/shabakaty/downloader/bx3;

    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/bx3;->I(I)V

    if-lez p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/d00$a;->a()V

    :cond_2
    return p1
.end method
