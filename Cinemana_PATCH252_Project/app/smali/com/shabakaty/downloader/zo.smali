.class public final Lcom/shabakaty/downloader/zo;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/p91;
.implements Lcom/shabakaty/downloader/a00;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zo$a;
    }
.end annotation


# static fields
.field public static final A:Lcom/shabakaty/downloader/a00$a;

.field public static final B:Lcom/shabakaty/downloader/ie3;


# instance fields
.field public final r:Lcom/shabakaty/downloader/n91;

.field public final s:I

.field public final t:Lcom/shabakaty/downloader/wh1;

.field public final u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/zo$a;",
            ">;"
        }
    .end annotation
.end field

.field public v:Z

.field public w:Lcom/shabakaty/downloader/a00$b;

.field public x:J

.field public y:Lcom/shabakaty/downloader/vz3;

.field public z:[Lcom/shabakaty/downloader/wh1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/wx;->x:Lcom/shabakaty/downloader/wx;

    sput-object v0, Lcom/shabakaty/downloader/zo;->A:Lcom/shabakaty/downloader/a00$a;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ie3;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ie3;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/zo;->B:Lcom/shabakaty/downloader/ie3;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/n91;ILcom/shabakaty/downloader/wh1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/zo;->s:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/zo;->t:Lcom/shabakaty/downloader/wh1;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/a00$b;JJ)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zo;->w:Lcom/shabakaty/downloader/a00$b;

    .line 2
    iput-wide p4, p0, Lcom/shabakaty/downloader/zo;->x:J

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/zo;->v:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/n91;->g(Lcom/shabakaty/downloader/p91;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    invoke-interface {p1, v3, v4, p2, p3}, Lcom/shabakaty/downloader/n91;->b(JJ)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/shabakaty/downloader/zo;->v:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    cmp-long v5, p2, v1

    if-nez v5, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Lcom/shabakaty/downloader/n91;->b(JJ)V

    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object p3, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/shabakaty/downloader/zo$a;

    invoke-virtual {p3, p1, p4, p5}, Lcom/shabakaty/downloader/zo$a;->g(Lcom/shabakaty/downloader/a00$b;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lcom/shabakaty/downloader/wh1;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/zo$a;

    iget-object v2, v2, Lcom/shabakaty/downloader/zo$a;->e:Lcom/shabakaty/downloader/wh1;

    invoke-static {v2}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/wh1;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/zo;->z:[Lcom/shabakaty/downloader/wh1;

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/o91;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo;->r:Lcom/shabakaty/downloader/n91;

    sget-object v1, Lcom/shabakaty/downloader/zo;->B:Lcom/shabakaty/downloader/ie3;

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/n91;->f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-static {v2}, Lcom/shabakaty/downloader/md;->e(Z)V

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public d(Lcom/shabakaty/downloader/vz3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/zo;->y:Lcom/shabakaty/downloader/vz3;

    return-void
.end method

.method public h(II)Lcom/shabakaty/downloader/fp4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zo$a;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/zo;->z:[Lcom/shabakaty/downloader/wh1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/zo$a;

    .line 4
    iget v1, p0, Lcom/shabakaty/downloader/zo;->s:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/shabakaty/downloader/zo;->t:Lcom/shabakaty/downloader/wh1;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lcom/shabakaty/downloader/zo$a;-><init>(IILcom/shabakaty/downloader/wh1;)V

    .line 5
    iget-object p2, p0, Lcom/shabakaty/downloader/zo;->w:Lcom/shabakaty/downloader/a00$b;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zo;->x:J

    invoke-virtual {v0, p2, v1, v2}, Lcom/shabakaty/downloader/zo$a;->g(Lcom/shabakaty/downloader/a00$b;J)V

    .line 6
    iget-object p2, p0, Lcom/shabakaty/downloader/zo;->u:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
