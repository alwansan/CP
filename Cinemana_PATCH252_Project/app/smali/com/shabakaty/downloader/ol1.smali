.class public Lcom/shabakaty/downloader/ol1;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Lcom/shabakaty/downloader/n91;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ol1$b;,
        Lcom/shabakaty/downloader/ol1$a;
    }
.end annotation


# static fields
.field public static final I:[B

.field public static final J:Lcom/shabakaty/downloader/wh1;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Lcom/shabakaty/downloader/p91;

.field public F:[Lcom/shabakaty/downloader/fp4;

.field public G:[Lcom/shabakaty/downloader/fp4;

.field public H:Z

.field public final a:I

.field public final b:Lcom/shabakaty/downloader/wo4;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/ol1$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/shabakaty/downloader/ka3;

.field public final f:Lcom/shabakaty/downloader/ka3;

.field public final g:Lcom/shabakaty/downloader/ka3;

.field public final h:[B

.field public final i:Lcom/shabakaty/downloader/ka3;

.field public final j:Lcom/shabakaty/downloader/qn4;

.field public final k:Lcom/shabakaty/downloader/ag6;

.field public final l:Lcom/shabakaty/downloader/ka3;

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/zd$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/ol1$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lcom/shabakaty/downloader/fp4;

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lcom/shabakaty/downloader/ka3;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:Lcom/shabakaty/downloader/ol1$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shabakaty/downloader/ol1;->I:[B

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    const-string v1, "application/x-emsg"

    .line 3
    iput-object v1, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ol1;->J:Lcom/shabakaty/downloader/wh1;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/qn4;",
            "Lcom/shabakaty/downloader/wo4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/ol1;-><init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;Lcom/shabakaty/downloader/fp4;)V

    return-void
.end method

.method public constructor <init>(ILcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/wo4;Ljava/util/List;Lcom/shabakaty/downloader/fp4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/shabakaty/downloader/qn4;",
            "Lcom/shabakaty/downloader/wo4;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/wh1;",
            ">;",
            "Lcom/shabakaty/downloader/fp4;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/ol1;->a:I

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/ol1;->j:Lcom/shabakaty/downloader/qn4;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/ol1;->b:Lcom/shabakaty/downloader/wo4;

    .line 6
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->c:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/shabakaty/downloader/ol1;->o:Lcom/shabakaty/downloader/fp4;

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/ag6;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->k:Lcom/shabakaty/downloader/ag6;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    .line 10
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    sget-object p3, Lcom/shabakaty/downloader/gw2;->a:[B

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->e:Lcom/shabakaty/downloader/ka3;

    .line 11
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->f:Lcom/shabakaty/downloader/ka3;

    .line 12
    new-instance p1, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ka3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    new-array p1, p2, [B

    .line 13
    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->h:[B

    .line 14
    new-instance p2, Lcom/shabakaty/downloader/ka3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    iput-object p2, p0, Lcom/shabakaty/downloader/ol1;->i:Lcom/shabakaty/downloader/ka3;

    .line 15
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    .line 16
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->n:Ljava/util/ArrayDeque;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    iput-wide p1, p0, Lcom/shabakaty/downloader/ol1;->x:J

    .line 19
    iput-wide p1, p0, Lcom/shabakaty/downloader/ol1;->w:J

    .line 20
    iput-wide p1, p0, Lcom/shabakaty/downloader/ol1;->y:J

    .line 21
    sget-object p1, Lcom/shabakaty/downloader/p91;->g:Lcom/shabakaty/downloader/p91;

    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/shabakaty/downloader/fp4;

    .line 22
    iput-object p2, p0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    new-array p1, p1, [Lcom/shabakaty/downloader/fp4;

    .line 23
    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->G:[Lcom/shabakaty/downloader/fp4;

    return-void
.end method

.method public static c(I)I
    .locals 3

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x26

    const-string v1, "Unexpected negative value: "

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, p0, v2}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0
.end method

.method public static i(Ljava/util/List;)Lcom/shabakaty/downloader/o01;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/zd$b;",
            ">;)",
            "Lcom/shabakaty/downloader/o01;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/zd$b;

    .line 3
    iget v6, v5, Lcom/shabakaty/downloader/zd;->a:I

    const v7, 0x70737368    # 3.013775E29f

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 6
    iget-object v5, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 7
    invoke-static {v5}, Lcom/shabakaty/downloader/uj3;->c([B)Lcom/shabakaty/downloader/uj3$a;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v6, v6, Lcom/shabakaty/downloader/uj3$a;->a:Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 9
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10
    :cond_2
    new-instance v7, Lcom/shabakaty/downloader/o01$b;

    const-string v8, "video/mp4"

    .line 11
    invoke-direct {v7, v6, v2, v8, v5}, Lcom/shabakaty/downloader/o01$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 12
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    new-instance p0, Lcom/shabakaty/downloader/o01;

    new-array v0, v1, [Lcom/shabakaty/downloader/o01$b;

    .line 14
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/o01$b;

    invoke-direct {p0, v2, v1, v0}, Lcom/shabakaty/downloader/o01;-><init>(Ljava/lang/String;Z[Lcom/shabakaty/downloader/o01$b;)V

    move-object v2, p0

    :goto_3
    return-object v2
.end method

.method public static j(Lcom/shabakaty/downloader/ka3;ILcom/shabakaty/downloader/zo4;)V
    .locals 5

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object p0, p2, Lcom/shabakaty/downloader/zo4;->m:[Z

    iget p1, p2, Lcom/shabakaty/downloader/zo4;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 5
    :cond_1
    iget v3, p2, Lcom/shabakaty/downloader/zo4;->e:I

    if-ne v2, v3, :cond_3

    .line 6
    iget-object v3, p2, Lcom/shabakaty/downloader/zo4;->m:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result p1

    .line 8
    iget-object v2, p2, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    .line 9
    iget-object v3, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v4, v3

    if-ge v4, p1, :cond_2

    .line 10
    new-array v3, p1, [B

    .line 11
    :cond_2
    iput-object v3, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 12
    iput p1, v2, Lcom/shabakaty/downloader/ka3;->c:I

    .line 13
    iput v0, v2, Lcom/shabakaty/downloader/ka3;->b:I

    .line 14
    iput-boolean v1, p2, Lcom/shabakaty/downloader/zo4;->l:Z

    .line 15
    iput-boolean v1, p2, Lcom/shabakaty/downloader/zo4;->p:Z

    .line 16
    invoke-virtual {p0, v3, v0, p1}, Lcom/shabakaty/downloader/ka3;->e([BII)V

    .line 17
    iget-object p0, p2, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 18
    iput-boolean v0, p2, Lcom/shabakaty/downloader/zo4;->p:Z

    return-void

    :cond_3
    const/16 p0, 0x50

    const-string p1, "Senc sample count "

    const-string p2, " is different from fragment sample count"

    .line 19
    invoke-static {p0, p1, v2, p2, v3}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 20
    invoke-static {p0}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ol1$b;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ol1$b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, Lcom/shabakaty/downloader/ol1;->v:I

    .line 5
    iput-wide p3, p0, Lcom/shabakaty/downloader/ol1;->w:J

    .line 6
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ol1;->d()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/ol1;->p:I

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/ol1;->s:I

    return-void
.end method

.method public final e(Landroid/util/SparseArray;I)Lcom/shabakaty/downloader/uo0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/shabakaty/downloader/uo0;",
            ">;I)",
            "Lcom/shabakaty/downloader/uo0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/uo0;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/uo0;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->p:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3a

    const-string v8, "FragmentedMp4Extractor"

    if-eq v2, v7, :cond_2b

    const-wide v3, 0x7fffffffffffffffL

    const/4 v9, 0x3

    if-eq v2, v5, :cond_26

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->z:Lcom/shabakaty/downloader/ol1$b;

    if-nez v2, :cond_8

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v10, 0x0

    move-wide v10, v3

    move-object v3, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_4

    .line 5
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/ol1$b;

    .line 6
    iget-boolean v13, v12, Lcom/shabakaty/downloader/ol1$b;->l:Z

    if-nez v13, :cond_1

    .line 7
    iget v14, v12, Lcom/shabakaty/downloader/ol1$b;->f:I

    iget-object v15, v12, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget v15, v15, Lcom/shabakaty/downloader/gp4;->b:I

    if-eq v14, v15, :cond_3

    :cond_1
    if-eqz v13, :cond_2

    .line 8
    iget v13, v12, Lcom/shabakaty/downloader/ol1$b;->h:I

    iget-object v14, v12, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget v14, v14, Lcom/shabakaty/downloader/zo4;->d:I

    if-ne v13, v14, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ol1$b;->a()J

    move-result-wide v13

    cmp-long v15, v13, v10

    if-gez v15, :cond_3

    move-object v3, v12

    move-wide v10, v13

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_6

    .line 10
    iget-wide v2, v0, Lcom/shabakaty/downloader/ol1;->u:J

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_5

    .line 11
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ol1;->d()V

    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_5
    const-string v1, "Offset to end of mdat was negative."

    .line 13
    invoke-static {v1, v6}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 14
    :cond_6
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ol1$b;->a()J

    move-result-wide v4

    .line 15
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v10

    sub-long/2addr v4, v10

    long-to-int v2, v4

    if-gez v2, :cond_7

    const-string v2, "Ignoring negative offset to sample data."

    .line 16
    invoke-static {v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 17
    :cond_7
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 18
    iput-object v3, v0, Lcom/shabakaty/downloader/ol1;->z:Lcom/shabakaty/downloader/ol1$b;

    move-object v2, v3

    .line 19
    :cond_8
    iget v3, v0, Lcom/shabakaty/downloader/ol1;->p:I

    const/4 v4, 0x6

    if-ne v3, v9, :cond_12

    .line 20
    iget-boolean v3, v2, Lcom/shabakaty/downloader/ol1$b;->l:Z

    if-nez v3, :cond_9

    .line 21
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v3, v3, Lcom/shabakaty/downloader/gp4;->d:[I

    iget v5, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    aget v3, v3, v5

    goto :goto_3

    .line 22
    :cond_9
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v3, v3, Lcom/shabakaty/downloader/zo4;->h:[I

    iget v5, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    aget v3, v3, v5

    .line 23
    :goto_3
    iput v3, v0, Lcom/shabakaty/downloader/ol1;->A:I

    .line 24
    iget v5, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    iget v8, v2, Lcom/shabakaty/downloader/ol1$b;->i:I

    if-ge v5, v8, :cond_f

    .line 25
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 26
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ol1$b;->b()Lcom/shabakaty/downloader/xo4;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 27
    :cond_a
    iget-object v4, v2, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v4, v4, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    .line 28
    iget v3, v3, Lcom/shabakaty/downloader/xo4;->d:I

    if-eqz v3, :cond_b

    .line 29
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 30
    :cond_b
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget v5, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 31
    iget-boolean v8, v3, Lcom/shabakaty/downloader/zo4;->l:Z

    if-eqz v8, :cond_c

    iget-object v3, v3, Lcom/shabakaty/downloader/zo4;->m:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_d

    .line 32
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 33
    :cond_d
    :goto_5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ol1$b;->c()Z

    move-result v2

    if-nez v2, :cond_e

    .line 34
    iput-object v6, v0, Lcom/shabakaty/downloader/ol1;->z:Lcom/shabakaty/downloader/ol1$b;

    .line 35
    :cond_e
    iput v9, v0, Lcom/shabakaty/downloader/ol1;->p:I

    goto/16 :goto_11

    .line 36
    :cond_f
    iget-object v5, v2, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v5, v5, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    iget v5, v5, Lcom/shabakaty/downloader/wo4;->g:I

    if-ne v5, v7, :cond_10

    add-int/lit8 v3, v3, -0x8

    .line 37
    iput v3, v0, Lcom/shabakaty/downloader/ol1;->A:I

    const/16 v3, 0x8

    .line 38
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 39
    :cond_10
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v3, v3, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    iget-object v3, v3, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget-object v3, v3, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    const-string v5, "audio/ac4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 40
    iget v3, v0, Lcom/shabakaty/downloader/ol1;->A:I

    const/4 v5, 0x7

    .line 41
    invoke-virtual {v2, v3, v5}, Lcom/shabakaty/downloader/ol1$b;->d(II)I

    move-result v3

    iput v3, v0, Lcom/shabakaty/downloader/ol1;->B:I

    .line 42
    iget v3, v0, Lcom/shabakaty/downloader/ol1;->A:I

    iget-object v8, v0, Lcom/shabakaty/downloader/ol1;->i:Lcom/shabakaty/downloader/ka3;

    invoke-static {v3, v8}, Lcom/shabakaty/downloader/b2;->a(ILcom/shabakaty/downloader/ka3;)V

    .line 43
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    iget-object v8, v0, Lcom/shabakaty/downloader/ol1;->i:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v3, v8, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 44
    iget v3, v0, Lcom/shabakaty/downloader/ol1;->B:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/shabakaty/downloader/ol1;->B:I

    goto :goto_6

    .line 45
    :cond_11
    iget v3, v0, Lcom/shabakaty/downloader/ol1;->A:I

    const/4 v5, 0x0

    .line 46
    invoke-virtual {v2, v3, v5}, Lcom/shabakaty/downloader/ol1$b;->d(II)I

    move-result v3

    iput v3, v0, Lcom/shabakaty/downloader/ol1;->B:I

    :goto_6
    const/4 v3, 0x0

    .line 47
    iget v5, v0, Lcom/shabakaty/downloader/ol1;->A:I

    iget v8, v0, Lcom/shabakaty/downloader/ol1;->B:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/shabakaty/downloader/ol1;->A:I

    const/4 v5, 0x4

    .line 48
    iput v5, v0, Lcom/shabakaty/downloader/ol1;->p:I

    .line 49
    iput v3, v0, Lcom/shabakaty/downloader/ol1;->C:I

    .line 50
    :cond_12
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v5, v3, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    .line 51
    iget-object v8, v2, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    .line 52
    iget-boolean v9, v2, Lcom/shabakaty/downloader/ol1$b;->l:Z

    if-nez v9, :cond_13

    .line 53
    iget-object v3, v3, Lcom/shabakaty/downloader/gp4;->f:[J

    iget v9, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    aget-wide v9, v3, v9

    goto :goto_7

    .line 54
    :cond_13
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget v9, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 55
    iget-object v10, v3, Lcom/shabakaty/downloader/zo4;->j:[J

    aget-wide v11, v10, v9

    iget-object v3, v3, Lcom/shabakaty/downloader/zo4;->i:[I

    aget v3, v3, v9

    int-to-long v9, v3

    add-long/2addr v9, v11

    .line 56
    :goto_7
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->j:Lcom/shabakaty/downloader/qn4;

    if-eqz v3, :cond_14

    .line 57
    invoke-virtual {v3, v9, v10}, Lcom/shabakaty/downloader/qn4;->a(J)J

    move-result-wide v9

    :cond_14
    move-wide v14, v9

    .line 58
    iget v3, v5, Lcom/shabakaty/downloader/wo4;->j:I

    if-eqz v3, :cond_1c

    .line 59
    iget-object v9, v0, Lcom/shabakaty/downloader/ol1;->f:Lcom/shabakaty/downloader/ka3;

    .line 60
    iget-object v9, v9, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v10, 0x0

    .line 61
    aput-byte v10, v9, v10

    .line 62
    aput-byte v10, v9, v7

    const/4 v11, 0x2

    .line 63
    aput-byte v10, v9, v11

    add-int/lit8 v10, v3, 0x1

    rsub-int/lit8 v3, v3, 0x4

    .line 64
    :goto_8
    iget v11, v0, Lcom/shabakaty/downloader/ol1;->B:I

    iget v12, v0, Lcom/shabakaty/downloader/ol1;->A:I

    if-ge v11, v12, :cond_1d

    .line 65
    iget v11, v0, Lcom/shabakaty/downloader/ol1;->C:I

    const-string v12, "video/hevc"

    if-nez v11, :cond_1a

    .line 66
    invoke-interface {v1, v9, v3, v10}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 67
    iget-object v11, v0, Lcom/shabakaty/downloader/ol1;->f:Lcom/shabakaty/downloader/ka3;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 68
    iget-object v11, v0, Lcom/shabakaty/downloader/ol1;->f:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v11}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v11

    if-lt v11, v7, :cond_19

    add-int/lit8 v11, v11, -0x1

    .line 69
    iput v11, v0, Lcom/shabakaty/downloader/ol1;->C:I

    .line 70
    iget-object v11, v0, Lcom/shabakaty/downloader/ol1;->e:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v11, v13}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 71
    iget-object v11, v0, Lcom/shabakaty/downloader/ol1;->e:Lcom/shabakaty/downloader/ka3;

    const/4 v13, 0x4

    invoke-interface {v8, v11, v13}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 72
    iget-object v11, v0, Lcom/shabakaty/downloader/ol1;->f:Lcom/shabakaty/downloader/ka3;

    invoke-interface {v8, v11, v7}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 73
    iget-object v11, v0, Lcom/shabakaty/downloader/ol1;->G:[Lcom/shabakaty/downloader/fp4;

    array-length v11, v11

    if-lez v11, :cond_18

    iget-object v11, v5, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget-object v11, v11, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    aget-byte v13, v9, v13

    .line 74
    sget-object v16, Lcom/shabakaty/downloader/gw2;->a:[B

    const-string v6, "video/avc"

    .line 75
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    and-int/lit8 v6, v13, 0x1f

    if-eq v6, v4, :cond_16

    .line 76
    :cond_15
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    and-int/lit8 v6, v13, 0x7e

    shr-int/2addr v6, v7

    const/16 v11, 0x27

    if-ne v6, v11, :cond_17

    :cond_16
    const/4 v6, 0x1

    goto :goto_9

    :cond_17
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_a

    :cond_18
    const/4 v6, 0x0

    .line 77
    :goto_a
    iput-boolean v6, v0, Lcom/shabakaty/downloader/ol1;->D:Z

    .line 78
    iget v6, v0, Lcom/shabakaty/downloader/ol1;->B:I

    add-int/lit8 v6, v6, 0x5

    iput v6, v0, Lcom/shabakaty/downloader/ol1;->B:I

    .line 79
    iget v6, v0, Lcom/shabakaty/downloader/ol1;->A:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/shabakaty/downloader/ol1;->A:I

    goto :goto_c

    :cond_19
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 80
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 81
    :cond_1a
    iget-boolean v4, v0, Lcom/shabakaty/downloader/ol1;->D:Z

    if-eqz v4, :cond_1b

    .line 82
    iget-object v4, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v4, v11}, Lcom/shabakaty/downloader/ka3;->A(I)V

    .line 83
    iget-object v4, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    .line 84
    iget-object v4, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 85
    iget v6, v0, Lcom/shabakaty/downloader/ol1;->C:I

    const/4 v7, 0x0

    invoke-interface {v1, v4, v7, v6}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 86
    iget-object v4, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    iget v6, v0, Lcom/shabakaty/downloader/ol1;->C:I

    invoke-interface {v8, v4, v6}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 87
    iget v4, v0, Lcom/shabakaty/downloader/ol1;->C:I

    .line 88
    iget-object v6, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    .line 89
    iget-object v7, v6, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 90
    iget v6, v6, Lcom/shabakaty/downloader/ka3;->c:I

    .line 91
    invoke-static {v7, v6}, Lcom/shabakaty/downloader/gw2;->e([BI)I

    move-result v6

    .line 92
    iget-object v7, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    iget-object v11, v5, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    iget-object v11, v11, Lcom/shabakaty/downloader/wh1;->C:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v7, v11}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 93
    iget-object v7, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v7, v6}, Lcom/shabakaty/downloader/ka3;->D(I)V

    .line 94
    iget-object v6, v0, Lcom/shabakaty/downloader/ol1;->g:Lcom/shabakaty/downloader/ka3;

    iget-object v7, v0, Lcom/shabakaty/downloader/ol1;->G:[Lcom/shabakaty/downloader/fp4;

    invoke-static {v14, v15, v6, v7}, Lcom/shabakaty/downloader/cy;->a(JLcom/shabakaty/downloader/ka3;[Lcom/shabakaty/downloader/fp4;)V

    goto :goto_b

    :cond_1b
    const/4 v4, 0x0

    .line 95
    invoke-interface {v8, v1, v11, v4}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result v4

    .line 96
    :goto_b
    iget v6, v0, Lcom/shabakaty/downloader/ol1;->B:I

    add-int/2addr v6, v4

    iput v6, v0, Lcom/shabakaty/downloader/ol1;->B:I

    .line 97
    iget v6, v0, Lcom/shabakaty/downloader/ol1;->C:I

    sub-int/2addr v6, v4

    iput v6, v0, Lcom/shabakaty/downloader/ol1;->C:I

    const/4 v4, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_c
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 98
    :cond_1c
    :goto_d
    iget v3, v0, Lcom/shabakaty/downloader/ol1;->B:I

    iget v4, v0, Lcom/shabakaty/downloader/ol1;->A:I

    if-ge v3, v4, :cond_1d

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    .line 99
    invoke-interface {v8, v1, v4, v3}, Lcom/shabakaty/downloader/fp4;->d(Lcom/shabakaty/downloader/rl0;IZ)I

    move-result v3

    .line 100
    iget v4, v0, Lcom/shabakaty/downloader/ol1;->B:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/shabakaty/downloader/ol1;->B:I

    goto :goto_d

    .line 101
    :cond_1d
    iget-boolean v3, v2, Lcom/shabakaty/downloader/ol1$b;->l:Z

    if-nez v3, :cond_1e

    .line 102
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v3, v3, Lcom/shabakaty/downloader/gp4;->g:[I

    iget v4, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    aget v3, v3, v4

    goto :goto_e

    .line 103
    :cond_1e
    iget-object v3, v2, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v3, v3, Lcom/shabakaty/downloader/zo4;->k:[Z

    iget v4, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    .line 104
    :goto_e
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ol1$b;->b()Lcom/shabakaty/downloader/xo4;

    move-result-object v4

    if-eqz v4, :cond_20

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    :cond_20
    move v11, v3

    .line 105
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ol1$b;->b()Lcom/shabakaty/downloader/xo4;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 106
    iget-object v3, v3, Lcom/shabakaty/downloader/xo4;->c:Lcom/shabakaty/downloader/fp4$a;

    goto :goto_f

    :cond_21
    const/4 v3, 0x0

    .line 107
    :goto_f
    iget v12, v0, Lcom/shabakaty/downloader/ol1;->A:I

    const/4 v13, 0x0

    move-wide v9, v14

    move-wide v4, v14

    move-object v14, v3

    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    .line 108
    :cond_22
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 109
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ol1$a;

    .line 110
    iget v6, v0, Lcom/shabakaty/downloader/ol1;->v:I

    iget v7, v3, Lcom/shabakaty/downloader/ol1$a;->b:I

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/shabakaty/downloader/ol1;->v:I

    .line 111
    iget-wide v6, v3, Lcom/shabakaty/downloader/ol1$a;->a:J

    add-long/2addr v6, v4

    .line 112
    iget-object v8, v0, Lcom/shabakaty/downloader/ol1;->j:Lcom/shabakaty/downloader/qn4;

    if-eqz v8, :cond_23

    .line 113
    invoke-virtual {v8, v6, v7}, Lcom/shabakaty/downloader/qn4;->a(J)J

    move-result-wide v6

    .line 114
    :cond_23
    iget-object v15, v0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    array-length v14, v15

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_10
    if-ge v13, v14, :cond_22

    aget-object v8, v15, v13

    const/4 v11, 0x1

    .line 115
    iget v12, v3, Lcom/shabakaty/downloader/ol1$a;->b:I

    iget v9, v0, Lcom/shabakaty/downloader/ol1;->v:I

    const/16 v16, 0x0

    move/from16 v17, v9

    move-wide v9, v6

    move/from16 v18, v13

    move/from16 v13, v17

    move/from16 v17, v14

    move-object/from16 v14, v16

    invoke-interface/range {v8 .. v14}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    add-int/lit8 v13, v18, 0x1

    move/from16 v14, v17

    goto :goto_10

    .line 116
    :cond_24
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ol1$b;->c()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x0

    .line 117
    iput-object v2, v0, Lcom/shabakaty/downloader/ol1;->z:Lcom/shabakaty/downloader/ol1$b;

    :cond_25
    const/4 v2, 0x3

    .line 118
    iput v2, v0, Lcom/shabakaty/downloader/ol1;->p:I

    const/4 v7, 0x1

    :goto_11
    if-eqz v7, :cond_0

    const/4 v1, 0x0

    return v1

    .line 119
    :cond_26
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    move-wide v4, v3

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v2, :cond_28

    .line 120
    iget-object v7, v0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ol1$b;

    iget-object v7, v7, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    .line 121
    iget-boolean v8, v7, Lcom/shabakaty/downloader/zo4;->p:Z

    if-eqz v8, :cond_27

    iget-wide v7, v7, Lcom/shabakaty/downloader/zo4;->c:J

    cmp-long v9, v7, v4

    if-gez v9, :cond_27

    .line 122
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/ol1$b;

    move-wide v4, v7

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_28
    if-nez v3, :cond_29

    const/4 v2, 0x3

    .line 123
    iput v2, v0, Lcom/shabakaty/downloader/ol1;->p:I

    goto/16 :goto_0

    .line 124
    :cond_29
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_2a

    .line 125
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 126
    iget-object v2, v3, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    .line 127
    iget-object v3, v2, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    .line 128
    iget-object v4, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    .line 129
    iget v3, v3, Lcom/shabakaty/downloader/ka3;->c:I

    const/4 v5, 0x0

    .line 130
    invoke-interface {v1, v4, v5, v3}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 131
    iget-object v3, v2, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 132
    iput-boolean v5, v2, Lcom/shabakaty/downloader/zo4;->p:Z

    goto/16 :goto_0

    :cond_2a
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 133
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 134
    :cond_2b
    iget-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    long-to-int v2, v5

    iget v5, v0, Lcom/shabakaty/downloader/ol1;->s:I

    sub-int/2addr v2, v5

    .line 135
    iget-object v5, v0, Lcom/shabakaty/downloader/ol1;->t:Lcom/shabakaty/downloader/ka3;

    if-eqz v5, :cond_38

    .line 136
    iget-object v6, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v7, 0x8

    .line 137
    invoke-interface {v1, v6, v7, v2}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 138
    new-instance v2, Lcom/shabakaty/downloader/zd$b;

    iget v6, v0, Lcom/shabakaty/downloader/ol1;->q:I

    invoke-direct {v2, v6, v5}, Lcom/shabakaty/downloader/zd$b;-><init>(ILcom/shabakaty/downloader/ka3;)V

    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v9

    .line 139
    iget-object v7, v0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 140
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/zd$a;

    .line 141
    iget-object v3, v3, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_2c
    if-ne v6, v4, :cond_30

    const/16 v2, 0x8

    .line 142
    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 143
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    .line 144
    invoke-virtual {v5, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 145
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v3

    if-nez v2, :cond_2d

    .line 146
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v6

    .line 147
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v11

    goto :goto_13

    .line 148
    :cond_2d
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v6

    .line 149
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v11

    :goto_13
    add-long/2addr v9, v11

    const-wide/32 v13, 0xf4240

    move-wide v11, v6

    move-wide v15, v3

    .line 150
    invoke-static/range {v11 .. v16}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v17

    const/4 v2, 0x2

    .line 151
    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 152
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->y()I

    move-result v2

    .line 153
    new-array v8, v2, [I

    .line 154
    new-array v15, v2, [J

    .line 155
    new-array v13, v2, [J

    .line 156
    new-array v14, v2, [J

    const/4 v11, 0x0

    move-wide/from16 v19, v17

    :goto_14
    if-ge v11, v2, :cond_2f

    .line 157
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v12

    const/high16 v16, -0x80000000

    and-int v16, v12, v16

    if-nez v16, :cond_2e

    .line 158
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v21

    const v16, 0x7fffffff

    and-int v12, v12, v16

    .line 159
    aput v12, v8, v11

    .line 160
    aput-wide v9, v15, v11

    .line 161
    aput-wide v19, v14, v11

    add-long v6, v6, v21

    const-wide/32 v19, 0xf4240

    move/from16 v21, v11

    move-wide v11, v6

    move/from16 p2, v2

    move-wide/from16 v22, v6

    move-object v2, v13

    move-object v6, v14

    move-wide/from16 v13, v19

    move-object v7, v15

    move-wide v15, v3

    .line 162
    invoke-static/range {v11 .. v16}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v19

    .line 163
    aget-wide v11, v6, v21

    sub-long v11, v19, v11

    aput-wide v11, v2, v21

    const/4 v11, 0x4

    .line 164
    invoke-virtual {v5, v11}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 165
    aget v11, v8, v21

    int-to-long v11, v11

    add-long/2addr v9, v11

    add-int/lit8 v11, v21, 0x1

    move-object v13, v2

    move-object v14, v6

    move-object v15, v7

    move-wide/from16 v6, v22

    move/from16 v2, p2

    goto :goto_14

    :cond_2e
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    .line 166
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_2f
    move-object v2, v13

    move-object v6, v14

    move-object v7, v15

    .line 167
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Lcom/shabakaty/downloader/c00;

    invoke-direct {v4, v8, v7, v2, v6}, Lcom/shabakaty/downloader/c00;-><init>([I[J[J[J)V

    .line 168
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 169
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/shabakaty/downloader/ol1;->y:J

    .line 170
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/vz3;

    invoke-interface {v3, v2}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    const/4 v2, 0x1

    .line 171
    iput-boolean v2, v0, Lcom/shabakaty/downloader/ol1;->H:Z

    goto/16 :goto_19

    :cond_30
    if-ne v6, v3, :cond_39

    .line 172
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    array-length v2, v2

    if-nez v2, :cond_31

    goto/16 :goto_19

    :cond_31
    const/16 v2, 0x8

    .line 173
    invoke-virtual {v5, v2}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 174
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_33

    const/4 v6, 0x1

    if-eq v2, v6, :cond_32

    const/16 v3, 0x2e

    const-string v4, "Skipping unsupported emsg version: "

    .line 175
    invoke-static {v3, v4, v2, v8}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_19

    .line 176
    :cond_32
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v6

    .line 177
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    move-wide v13, v6

    invoke-static/range {v9 .. v14}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v15

    .line 178
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    invoke-static/range {v9 .. v14}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v6

    .line 179
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v8

    .line 180
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v2

    .line 181
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v10

    .line 183
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move-object/from16 v21, v10

    move-wide v6, v15

    move-wide v8, v3

    goto :goto_16

    .line 184
    :cond_33
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->n()Ljava/lang/String;

    move-result-object v10

    .line 187
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v6

    .line 189
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v11

    const-wide/32 v13, 0xf4240

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v8

    .line 190
    iget-wide v11, v0, Lcom/shabakaty/downloader/ol1;->y:J

    cmp-long v13, v11, v3

    if-eqz v13, :cond_34

    add-long/2addr v11, v8

    move-wide/from16 v17, v11

    goto :goto_15

    :cond_34
    move-wide/from16 v17, v3

    .line 191
    :goto_15
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    move-wide v15, v6

    invoke-static/range {v11 .. v16}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v6

    .line 192
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v11

    move-object/from16 v20, v2

    move-wide/from16 v22, v6

    move-object/from16 v21, v10

    move-wide/from16 v24, v11

    move-wide/from16 v6, v17

    .line 193
    :goto_16
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v2

    new-array v2, v2, [B

    .line 194
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v10

    .line 195
    iget-object v11, v5, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v12, v5, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v13, 0x0

    invoke-static {v11, v12, v2, v13, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget v11, v5, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v11, v10

    iput v11, v5, Lcom/shabakaty/downloader/ka3;->b:I

    .line 197
    new-instance v5, Lcom/shabakaty/downloader/u51;

    move-object/from16 v19, v5

    move-object/from16 v26, v2

    invoke-direct/range {v19 .. v26}, Lcom/shabakaty/downloader/u51;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 198
    new-instance v2, Lcom/shabakaty/downloader/ka3;

    iget-object v10, v0, Lcom/shabakaty/downloader/ol1;->k:Lcom/shabakaty/downloader/ag6;

    .line 199
    invoke-virtual {v10, v5}, Lcom/shabakaty/downloader/ag6;->l(Lcom/shabakaty/downloader/u51;)[B

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/shabakaty/downloader/ka3;-><init>([B)V

    .line 200
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v5

    .line 201
    iget-object v10, v0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    array-length v11, v10

    const/4 v12, 0x0

    :goto_17
    if-ge v12, v11, :cond_35

    aget-object v13, v10, v12

    const/4 v14, 0x0

    .line 202
    invoke-virtual {v2, v14}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 203
    invoke-interface {v13, v2, v5}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_35
    cmp-long v2, v6, v3

    if-nez v2, :cond_36

    .line 204
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->n:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/shabakaty/downloader/ol1$a;

    invoke-direct {v3, v8, v9, v5}, Lcom/shabakaty/downloader/ol1$a;-><init>(JI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 205
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->v:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/shabakaty/downloader/ol1;->v:I

    goto :goto_19

    .line 206
    :cond_36
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->j:Lcom/shabakaty/downloader/qn4;

    if-eqz v2, :cond_37

    .line 207
    invoke-virtual {v2, v6, v7}, Lcom/shabakaty/downloader/qn4;->a(J)J

    move-result-wide v6

    .line 208
    :cond_37
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_39

    aget-object v10, v2, v4

    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide v11, v6

    move v14, v5

    .line 209
    invoke-interface/range {v10 .. v16}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 210
    :cond_38
    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/o91;->q(I)V

    .line 211
    :cond_39
    :goto_19
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/ol1;->k(J)V

    goto/16 :goto_0

    .line 212
    :cond_3a
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    if-nez v2, :cond_3c

    .line 213
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    .line 214
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 215
    invoke-interface {v1, v2, v6, v5, v7}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result v2

    if-nez v2, :cond_3b

    const/4 v2, 0x0

    goto/16 :goto_21

    .line 216
    :cond_3b
    iput v5, v0, Lcom/shabakaty/downloader/ol1;->s:I

    .line 217
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 218
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    .line 219
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    iput v2, v0, Lcom/shabakaty/downloader/ol1;->q:I

    .line 220
    :cond_3c
    iget-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3d

    .line 221
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    .line 222
    iget-object v2, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/16 v5, 0x8

    .line 223
    invoke-interface {v1, v2, v5, v5}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    .line 224
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    .line 225
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    goto :goto_1a

    :cond_3d
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_3f

    .line 226
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3e

    .line 227
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3e

    .line 228
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/zd$a;

    iget-wide v5, v2, Lcom/shabakaty/downloader/zd$a;->b:J

    :cond_3e
    cmp-long v2, v5, v7

    if-eqz v2, :cond_3f

    .line 229
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    .line 230
    :cond_3f
    :goto_1a
    iget-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    iget v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_4e

    .line 231
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v5

    iget v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 232
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->q:I

    const v7, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v2, v8, :cond_40

    if-ne v2, v7, :cond_41

    .line 233
    :cond_40
    iget-boolean v2, v0, Lcom/shabakaty/downloader/ol1;->H:Z

    if-nez v2, :cond_41

    .line 234
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    new-instance v9, Lcom/shabakaty/downloader/vz3$b;

    iget-wide v10, v0, Lcom/shabakaty/downloader/ol1;->x:J

    invoke-direct {v9, v10, v11, v5, v6}, Lcom/shabakaty/downloader/vz3$b;-><init>(JJ)V

    invoke-interface {v2, v9}, Lcom/shabakaty/downloader/p91;->d(Lcom/shabakaty/downloader/vz3;)V

    const/4 v2, 0x1

    .line 235
    iput-boolean v2, v0, Lcom/shabakaty/downloader/ol1;->H:Z

    .line 236
    :cond_41
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->q:I

    if-ne v2, v8, :cond_42

    .line 237
    iget-object v2, v0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_1b
    if-ge v9, v2, :cond_42

    .line 238
    iget-object v10, v0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/ol1$b;

    iget-object v10, v10, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    .line 239
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iput-wide v5, v10, Lcom/shabakaty/downloader/zo4;->c:J

    .line 241
    iput-wide v5, v10, Lcom/shabakaty/downloader/zo4;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 242
    :cond_42
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->q:I

    if-ne v2, v7, :cond_43

    const/4 v2, 0x0

    .line 243
    iput-object v2, v0, Lcom/shabakaty/downloader/ol1;->z:Lcom/shabakaty/downloader/ol1$b;

    .line 244
    iget-wide v2, v0, Lcom/shabakaty/downloader/ol1;->r:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/shabakaty/downloader/ol1;->u:J

    const/4 v2, 0x2

    .line 245
    iput v2, v0, Lcom/shabakaty/downloader/ol1;->p:I

    goto/16 :goto_20

    :cond_43
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_45

    const v5, 0x7472616b

    if-eq v2, v5, :cond_45

    const v5, 0x6d646961

    if-eq v2, v5, :cond_45

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_45

    const v5, 0x7374626c

    if-eq v2, v5, :cond_45

    if-eq v2, v8, :cond_45

    const v5, 0x74726166

    if-eq v2, v5, :cond_45

    const v5, 0x6d766578

    if-eq v2, v5, :cond_45

    const v5, 0x65647473

    if-ne v2, v5, :cond_44

    goto :goto_1c

    :cond_44
    const/4 v5, 0x0

    goto :goto_1d

    :cond_45
    :goto_1c
    const/4 v5, 0x1

    :goto_1d
    if-eqz v5, :cond_47

    .line 246
    invoke-interface/range {p1 .. p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/shabakaty/downloader/ol1;->r:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 247
    iget-object v4, v0, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    new-instance v5, Lcom/shabakaty/downloader/zd$a;

    iget v6, v0, Lcom/shabakaty/downloader/ol1;->q:I

    invoke-direct {v5, v6, v2, v3}, Lcom/shabakaty/downloader/zd$a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 248
    iget-wide v4, v0, Lcom/shabakaty/downloader/ol1;->r:J

    iget v6, v0, Lcom/shabakaty/downloader/ol1;->s:I

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_46

    .line 249
    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/ol1;->k(J)V

    goto/16 :goto_20

    .line 250
    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ol1;->d()V

    goto/16 :goto_20

    :cond_47
    const v5, 0x68646c72    # 4.3148E24f

    if-eq v2, v5, :cond_49

    const v5, 0x6d646864

    if-eq v2, v5, :cond_49

    const v5, 0x6d766864

    if-eq v2, v5, :cond_49

    if-eq v2, v4, :cond_49

    const v4, 0x73747364

    if-eq v2, v4, :cond_49

    const v4, 0x73747473

    if-eq v2, v4, :cond_49

    const v4, 0x63747473

    if-eq v2, v4, :cond_49

    const v4, 0x73747363

    if-eq v2, v4, :cond_49

    const v4, 0x7374737a

    if-eq v2, v4, :cond_49

    const v4, 0x73747a32

    if-eq v2, v4, :cond_49

    const v4, 0x7374636f

    if-eq v2, v4, :cond_49

    const v4, 0x636f3634

    if-eq v2, v4, :cond_49

    const v4, 0x73747373

    if-eq v2, v4, :cond_49

    const v4, 0x74666474

    if-eq v2, v4, :cond_49

    const v4, 0x74666864

    if-eq v2, v4, :cond_49

    const v4, 0x746b6864

    if-eq v2, v4, :cond_49

    const v4, 0x74726578

    if-eq v2, v4, :cond_49

    const v4, 0x7472756e

    if-eq v2, v4, :cond_49

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_49

    const v4, 0x7361697a

    if-eq v2, v4, :cond_49

    const v4, 0x7361696f

    if-eq v2, v4, :cond_49

    const v4, 0x73656e63

    if-eq v2, v4, :cond_49

    const v4, 0x75756964

    if-eq v2, v4, :cond_49

    const v4, 0x73626770

    if-eq v2, v4, :cond_49

    const v4, 0x73677064

    if-eq v2, v4, :cond_49

    const v4, 0x656c7374

    if-eq v2, v4, :cond_49

    const v4, 0x6d656864

    if-eq v2, v4, :cond_49

    if-ne v2, v3, :cond_48

    goto :goto_1e

    :cond_48
    const/4 v2, 0x0

    goto :goto_1f

    :cond_49
    :goto_1e
    const/4 v2, 0x1

    :goto_1f
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_4c

    .line 251
    iget v2, v0, Lcom/shabakaty/downloader/ol1;->s:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4b

    .line 252
    iget-wide v6, v0, Lcom/shabakaty/downloader/ol1;->r:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_4a

    .line 253
    new-instance v2, Lcom/shabakaty/downloader/ka3;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ka3;-><init>(I)V

    .line 254
    iget-object v3, v0, Lcom/shabakaty/downloader/ol1;->l:Lcom/shabakaty/downloader/ka3;

    .line 255
    iget-object v3, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget-object v4, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    const/4 v6, 0x0

    .line 256
    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    iput-object v2, v0, Lcom/shabakaty/downloader/ol1;->t:Lcom/shabakaty/downloader/ka3;

    const/4 v2, 0x1

    .line 258
    iput v2, v0, Lcom/shabakaty/downloader/ol1;->p:I

    goto :goto_20

    :cond_4a
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 259
    invoke-static {v1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_4b
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 260
    invoke-static {v1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    .line 261
    :cond_4c
    iget-wide v5, v0, Lcom/shabakaty/downloader/ol1;->r:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_4d

    const/4 v2, 0x0

    .line 262
    iput-object v2, v0, Lcom/shabakaty/downloader/ol1;->t:Lcom/shabakaty/downloader/ka3;

    const/4 v2, 0x1

    .line 263
    iput v2, v0, Lcom/shabakaty/downloader/ol1;->p:I

    :goto_20
    const/4 v2, 0x1

    :goto_21
    if-nez v2, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_4d
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 264
    invoke-static {v1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1

    :cond_4e
    const-string v1, "Atom size less than header length (unsupported)."

    .line 265
    invoke-static {v1}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v1

    throw v1
.end method

.method public g(Lcom/shabakaty/downloader/p91;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ol1;->d()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/fp4;

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/ol1;->o:Lcom/shabakaty/downloader/fp4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/ol1;->a:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 6
    iget-object v5, p0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    const/4 v6, 0x5

    .line 7
    invoke-interface {v5, v4, v6}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v4, 0x65

    move v1, v3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/sy4;->J([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/fp4;

    iput-object v0, p0, Lcom/shabakaty/downloader/ol1;->F:[Lcom/shabakaty/downloader/fp4;

    .line 9
    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 10
    sget-object v6, Lcom/shabakaty/downloader/ol1;->J:Lcom/shabakaty/downloader/wh1;

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/shabakaty/downloader/fp4;

    iput-object v0, p0, Lcom/shabakaty/downloader/ol1;->G:[Lcom/shabakaty/downloader/fp4;

    const/4 v0, 0x0

    .line 12
    :goto_2
    iget-object v1, p0, Lcom/shabakaty/downloader/ol1;->G:[Lcom/shabakaty/downloader/fp4;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 13
    iget-object v1, p0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x3

    invoke-interface {v1, v4, v5}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v1

    .line 14
    iget-object v4, p0, Lcom/shabakaty/downloader/ol1;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/wh1;

    invoke-interface {v1, v4}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 15
    iget-object v4, p0, Lcom/shabakaty/downloader/ol1;->G:[Lcom/shabakaty/downloader/fp4;

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ol1;->b:Lcom/shabakaty/downloader/wo4;

    if-eqz v0, :cond_4

    .line 17
    new-instance v1, Lcom/shabakaty/downloader/ol1$b;

    iget v0, v0, Lcom/shabakaty/downloader/wo4;->b:I

    .line 18
    invoke-interface {p1, v2, v0}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    new-instance v0, Lcom/shabakaty/downloader/gp4;

    iget-object v4, p0, Lcom/shabakaty/downloader/ol1;->b:Lcom/shabakaty/downloader/wo4;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/shabakaty/downloader/gp4;-><init>(Lcom/shabakaty/downloader/wo4;[J[II[J[IJ)V

    new-instance v3, Lcom/shabakaty/downloader/uo0;

    invoke-direct {v3, v2, v2, v2, v2}, Lcom/shabakaty/downloader/uo0;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, Lcom/shabakaty/downloader/ol1$b;-><init>(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/gp4;Lcom/shabakaty/downloader/uo0;)V

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    invoke-interface {p1}, Lcom/shabakaty/downloader/p91;->b()V

    :cond_4
    return-void
.end method

.method public h(Lcom/shabakaty/downloader/o91;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, v1}, Lcom/shabakaty/downloader/i94;->a(Lcom/shabakaty/downloader/o91;ZZ)Z

    move-result p1

    return p1
.end method

.method public final k(J)V
    .locals 47

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, v1, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, v1, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/zd$a;

    iget-wide v2, v2, Lcom/shabakaty/downloader/zd$a;->b:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_59

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/shabakaty/downloader/zd$a;

    .line 3
    iget v2, v3, Lcom/shabakaty/downloader/zd;->a:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    if-ne v2, v4, :cond_b

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/ol1;->b:Lcom/shabakaty/downloader/wo4;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    .line 5
    iget-object v2, v3, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/shabakaty/downloader/ol1;->i(Ljava/util/List;)Lcom/shabakaty/downloader/o01;

    move-result-object v7

    const v2, 0x6d766578

    .line 6
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/zd$a;->b(I)Lcom/shabakaty/downloader/zd$a;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iget-object v4, v2, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v4, :cond_4

    .line 10
    iget-object v12, v2, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/shabakaty/downloader/zd$b;

    .line 11
    iget v13, v12, Lcom/shabakaty/downloader/zd;->a:I

    const v14, 0x74726578

    if-ne v13, v14, :cond_1

    .line 12
    iget-object v12, v12, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 13
    invoke-virtual {v12, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 14
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    .line 15
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    .line 16
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    .line 17
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    .line 18
    invoke-virtual {v12}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v12

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/shabakaty/downloader/uo0;

    invoke-direct {v6, v13, v14, v15, v12}, Lcom/shabakaty/downloader/uo0;-><init>(IIII)V

    .line 20
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 21
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/shabakaty/downloader/uo0;

    invoke-virtual {v11, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const v5, 0x6d656864

    if-ne v13, v5, :cond_3

    .line 22
    iget-object v5, v12, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v6, 0x8

    .line 23
    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 24
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_2

    .line 25
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v8

    goto :goto_4

    :cond_2
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v8

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v6, 0x8

    :goto_4
    add-int/lit8 v10, v10, 0x1

    const/16 v5, 0xc

    goto :goto_2

    .line 26
    :cond_4
    new-instance v4, Lcom/shabakaty/downloader/no1;

    invoke-direct {v4}, Lcom/shabakaty/downloader/no1;-><init>()V

    iget v2, v1, Lcom/shabakaty/downloader/ol1;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    const/4 v10, 0x0

    new-instance v12, Lcom/shabakaty/downloader/nl1;

    invoke-direct {v12, v1}, Lcom/shabakaty/downloader/nl1;-><init>(Lcom/shabakaty/downloader/ol1;)V

    move-wide v5, v8

    move v8, v2

    move v9, v10

    move-object v10, v12

    .line 27
    invoke-static/range {v3 .. v10}, Lcom/shabakaty/downloader/be;->e(Lcom/shabakaty/downloader/zd$a;Lcom/shabakaty/downloader/no1;JLcom/shabakaty/downloader/o01;ZZLcom/shabakaty/downloader/dn1;)Ljava/util/List;

    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 29
    iget-object v4, v1, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_6

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/gp4;

    .line 31
    iget-object v6, v5, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    .line 32
    new-instance v7, Lcom/shabakaty/downloader/ol1$b;

    iget-object v8, v1, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    iget v9, v6, Lcom/shabakaty/downloader/wo4;->b:I

    .line 33
    invoke-interface {v8, v4, v9}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object v8

    iget v9, v6, Lcom/shabakaty/downloader/wo4;->a:I

    .line 34
    invoke-virtual {v1, v11, v9}, Lcom/shabakaty/downloader/ol1;->e(Landroid/util/SparseArray;I)Lcom/shabakaty/downloader/uo0;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, Lcom/shabakaty/downloader/ol1$b;-><init>(Lcom/shabakaty/downloader/fp4;Lcom/shabakaty/downloader/gp4;Lcom/shabakaty/downloader/uo0;)V

    .line 35
    iget-object v5, v1, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    iget v8, v6, Lcom/shabakaty/downloader/wo4;->a:I

    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-wide v7, v1, Lcom/shabakaty/downloader/ol1;->x:J

    iget-wide v5, v6, Lcom/shabakaty/downloader/wo4;->e:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/shabakaty/downloader/ol1;->x:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 37
    :cond_6
    iget-object v2, v1, Lcom/shabakaty/downloader/ol1;->E:Lcom/shabakaty/downloader/p91;

    invoke-interface {v2}, Lcom/shabakaty/downloader/p91;->b()V

    goto :goto_9

    .line 38
    :cond_7
    iget-object v4, v1, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lcom/shabakaty/downloader/md;->e(Z)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v3, :cond_9

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/gp4;

    .line 40
    iget-object v6, v5, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    .line 41
    iget-object v7, v1, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    iget v8, v6, Lcom/shabakaty/downloader/wo4;->a:I

    .line 42
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/downloader/ol1$b;

    iget v6, v6, Lcom/shabakaty/downloader/wo4;->a:I

    .line 43
    invoke-virtual {v1, v11, v6}, Lcom/shabakaty/downloader/ol1;->e(Landroid/util/SparseArray;I)Lcom/shabakaty/downloader/uo0;

    move-result-object v6

    .line 44
    iput-object v5, v7, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    .line 45
    iput-object v6, v7, Lcom/shabakaty/downloader/ol1$b;->e:Lcom/shabakaty/downloader/uo0;

    .line 46
    iget-object v6, v7, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    iget-object v5, v5, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    iget-object v5, v5, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    invoke-interface {v6, v5}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 47
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ol1$b;->e()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    move-object v3, v0

    goto/16 :goto_3b

    .line 48
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected moov box."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/16 v6, 0x8

    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_57

    .line 49
    iget-object v2, v1, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    iget-object v4, v1, Lcom/shabakaty/downloader/ol1;->b:Lcom/shabakaty/downloader/wo4;

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    const/4 v4, 0x0

    :goto_a
    iget v5, v1, Lcom/shabakaty/downloader/ol1;->a:I

    iget-object v1, v1, Lcom/shabakaty/downloader/ol1;->h:[B

    .line 50
    iget-object v7, v3, Lcom/shabakaty/downloader/zd$a;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_50

    .line 51
    iget-object v9, v3, Lcom/shabakaty/downloader/zd$a;->d:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/zd$a;

    .line 52
    iget v10, v9, Lcom/shabakaty/downloader/zd;->a:I

    const v11, 0x74726166

    if-ne v10, v11, :cond_4f

    const v10, 0x74666864

    .line 53
    invoke-virtual {v9, v10}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v10

    .line 54
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v10, v10, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 56
    invoke-virtual {v10, v6}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 57
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    const v11, 0xffffff

    and-int/2addr v6, v11

    .line 58
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v11

    if-eqz v4, :cond_d

    const/4 v11, 0x0

    .line 59
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_c

    :cond_d
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    :goto_c
    check-cast v11, Lcom/shabakaty/downloader/ol1$b;

    if-nez v11, :cond_e

    const/4 v11, 0x0

    goto :goto_11

    :cond_e
    and-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_f

    .line 60
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v12

    .line 61
    iget-object v14, v11, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iput-wide v12, v14, Lcom/shabakaty/downloader/zo4;->b:J

    .line 62
    iput-wide v12, v14, Lcom/shabakaty/downloader/zo4;->c:J

    .line 63
    :cond_f
    iget-object v12, v11, Lcom/shabakaty/downloader/ol1$b;->e:Lcom/shabakaty/downloader/uo0;

    and-int/lit8 v13, v6, 0x2

    if-eqz v13, :cond_10

    .line 64
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_d

    .line 65
    :cond_10
    iget v13, v12, Lcom/shabakaty/downloader/uo0;->a:I

    :goto_d
    and-int/lit8 v14, v6, 0x8

    if-eqz v14, :cond_11

    .line 66
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v14

    goto :goto_e

    .line 67
    :cond_11
    iget v14, v12, Lcom/shabakaty/downloader/uo0;->b:I

    :goto_e
    and-int/lit8 v15, v6, 0x10

    if-eqz v15, :cond_12

    .line 68
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    goto :goto_f

    .line 69
    :cond_12
    iget v15, v12, Lcom/shabakaty/downloader/uo0;->c:I

    :goto_f
    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_13

    .line 70
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v6

    goto :goto_10

    .line 71
    :cond_13
    iget v6, v12, Lcom/shabakaty/downloader/uo0;->d:I

    .line 72
    :goto_10
    iget-object v10, v11, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    new-instance v12, Lcom/shabakaty/downloader/uo0;

    invoke-direct {v12, v13, v14, v15, v6}, Lcom/shabakaty/downloader/uo0;-><init>(IIII)V

    iput-object v12, v10, Lcom/shabakaty/downloader/zo4;->a:Lcom/shabakaty/downloader/uo0;

    :goto_11
    if-nez v11, :cond_14

    goto/16 :goto_35

    .line 73
    :cond_14
    iget-object v6, v11, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    .line 74
    iget-wide v12, v6, Lcom/shabakaty/downloader/zo4;->q:J

    .line 75
    iget-boolean v10, v6, Lcom/shabakaty/downloader/zo4;->r:Z

    .line 76
    invoke-virtual {v11}, Lcom/shabakaty/downloader/ol1$b;->e()V

    const/4 v14, 0x1

    .line 77
    iput-boolean v14, v11, Lcom/shabakaty/downloader/ol1$b;->l:Z

    const v14, 0x74666474

    .line 78
    invoke-virtual {v9, v14}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v14

    if-eqz v14, :cond_16

    and-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_16

    .line 79
    iget-object v10, v14, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v12, 0x8

    .line 80
    invoke-virtual {v10, v12}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 81
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 82
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v14

    goto :goto_12

    :cond_15
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v14

    .line 83
    :goto_12
    iput-wide v14, v6, Lcom/shabakaty/downloader/zo4;->q:J

    .line 84
    iput-boolean v13, v6, Lcom/shabakaty/downloader/zo4;->r:Z

    goto :goto_13

    .line 85
    :cond_16
    iput-wide v12, v6, Lcom/shabakaty/downloader/zo4;->q:J

    .line 86
    iput-boolean v10, v6, Lcom/shabakaty/downloader/zo4;->r:Z

    .line 87
    :goto_13
    iget-object v10, v9, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    .line 88
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    :goto_14
    const v2, 0x7472756e

    if-ge v13, v12, :cond_18

    .line 89
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, Lcom/shabakaty/downloader/zd$b;

    move/from16 v17, v7

    .line 90
    iget v7, v4, Lcom/shabakaty/downloader/zd;->a:I

    if-ne v7, v2, :cond_17

    .line 91
    iget-object v2, v4, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v4, 0xc

    .line 92
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 93
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v2

    if-lez v2, :cond_17

    add-int/2addr v15, v2

    add-int/lit8 v14, v14, 0x1

    :cond_17
    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v17

    move/from16 v4, v18

    goto :goto_14

    :cond_18
    move/from16 v18, v4

    move/from16 v17, v7

    const/4 v4, 0x0

    .line 94
    iput v4, v11, Lcom/shabakaty/downloader/ol1$b;->h:I

    .line 95
    iput v4, v11, Lcom/shabakaty/downloader/ol1$b;->g:I

    .line 96
    iput v4, v11, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 97
    iget-object v4, v11, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    .line 98
    iput v14, v4, Lcom/shabakaty/downloader/zo4;->d:I

    .line 99
    iput v15, v4, Lcom/shabakaty/downloader/zo4;->e:I

    .line 100
    iget-object v7, v4, Lcom/shabakaty/downloader/zo4;->g:[I

    array-length v7, v7

    if-ge v7, v14, :cond_19

    .line 101
    new-array v7, v14, [J

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->f:[J

    .line 102
    new-array v7, v14, [I

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->g:[I

    .line 103
    :cond_19
    iget-object v7, v4, Lcom/shabakaty/downloader/zo4;->h:[I

    array-length v7, v7

    if-ge v7, v15, :cond_1a

    mul-int/lit8 v15, v15, 0x7d

    .line 104
    div-int/lit8 v15, v15, 0x64

    .line 105
    new-array v7, v15, [I

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->h:[I

    .line 106
    new-array v7, v15, [I

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->i:[I

    .line 107
    new-array v7, v15, [J

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->j:[J

    .line 108
    new-array v7, v15, [Z

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->k:[Z

    .line 109
    new-array v7, v15, [Z

    iput-object v7, v4, Lcom/shabakaty/downloader/zo4;->m:[Z

    :cond_1a
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_15
    if-ge v4, v12, :cond_2f

    .line 110
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    check-cast v14, Lcom/shabakaty/downloader/zd$b;

    .line 111
    iget v15, v14, Lcom/shabakaty/downloader/zd;->a:I

    if-ne v15, v2, :cond_2e

    add-int/lit8 v2, v13, 0x1

    .line 112
    iget-object v14, v14, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v15, 0x8

    .line 113
    invoke-virtual {v14, v15}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 114
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v15

    const v19, 0xffffff

    and-int v15, v15, v19

    move/from16 v19, v2

    .line 115
    iget-object v2, v11, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v2, v2, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    move-object/from16 v22, v10

    .line 116
    iget-object v10, v11, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    move/from16 v23, v12

    .line 117
    iget-object v12, v10, Lcom/shabakaty/downloader/zo4;->a:Lcom/shabakaty/downloader/uo0;

    sget v24, Lcom/shabakaty/downloader/sy4;->a:I

    .line 118
    iget-object v0, v10, Lcom/shabakaty/downloader/zo4;->g:[I

    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v24

    aput v24, v0, v13

    .line 119
    iget-object v0, v10, Lcom/shabakaty/downloader/zo4;->f:[J

    move/from16 v24, v8

    move-object/from16 v25, v9

    iget-wide v8, v10, Lcom/shabakaty/downloader/zo4;->b:J

    aput-wide v8, v0, v13

    and-int/lit8 v8, v15, 0x1

    if-eqz v8, :cond_1b

    .line 120
    aget-wide v8, v0, v13

    move-object/from16 v26, v3

    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    move/from16 v27, v4

    int-to-long v3, v3

    add-long/2addr v8, v3

    aput-wide v8, v0, v13

    goto :goto_16

    :cond_1b
    move-object/from16 v26, v3

    move/from16 v27, v4

    :goto_16
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_17

    :cond_1c
    const/4 v0, 0x0

    .line 121
    :goto_17
    iget v3, v12, Lcom/shabakaty/downloader/uo0;->d:I

    if-eqz v0, :cond_1d

    .line 122
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    :cond_1d
    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_18

    :cond_1e
    const/4 v4, 0x0

    :goto_18
    and-int/lit16 v8, v15, 0x200

    if-eqz v8, :cond_1f

    const/4 v8, 0x1

    goto :goto_19

    :cond_1f
    const/4 v8, 0x0

    :goto_19
    and-int/lit16 v9, v15, 0x400

    if-eqz v9, :cond_20

    const/4 v9, 0x1

    goto :goto_1a

    :cond_20
    const/4 v9, 0x0

    :goto_1a
    and-int/lit16 v15, v15, 0x800

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    goto :goto_1b

    :cond_21
    const/4 v15, 0x0

    :goto_1b
    move/from16 v28, v3

    .line 123
    iget-object v3, v2, Lcom/shabakaty/downloader/wo4;->h:[J

    if-eqz v3, :cond_23

    move-object/from16 v29, v1

    array-length v1, v3

    move-object/from16 v30, v6

    const/4 v6, 0x1

    if-ne v1, v6, :cond_22

    const/4 v1, 0x0

    aget-wide v31, v3, v1

    const-wide/16 v20, 0x0

    cmp-long v3, v31, v20

    if-nez v3, :cond_22

    .line 124
    iget-object v3, v2, Lcom/shabakaty/downloader/wo4;->i:[J

    .line 125
    aget-wide v31, v3, v1

    const-wide/32 v33, 0xf4240

    move v3, v0

    iget-wide v0, v2, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v35, v0

    .line 126
    invoke-static/range {v31 .. v36}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v0

    goto :goto_1d

    :cond_22
    move v3, v0

    goto :goto_1c

    :cond_23
    move v3, v0

    move-object/from16 v29, v1

    move-object/from16 v30, v6

    :goto_1c
    const-wide/16 v0, 0x0

    .line 127
    :goto_1d
    iget-object v6, v10, Lcom/shabakaty/downloader/zo4;->h:[I

    move-object/from16 v20, v6

    .line 128
    iget-object v6, v10, Lcom/shabakaty/downloader/zo4;->i:[I

    move-object/from16 v31, v11

    .line 129
    iget-object v11, v10, Lcom/shabakaty/downloader/zo4;->j:[J

    move-object/from16 v21, v11

    .line 130
    iget-object v11, v10, Lcom/shabakaty/downloader/zo4;->k:[Z

    move-object/from16 v32, v11

    .line 131
    iget v11, v2, Lcom/shabakaty/downloader/wo4;->b:I

    move-wide/from16 v33, v0

    const/4 v0, 0x2

    if-ne v11, v0, :cond_24

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_1e

    :cond_24
    const/4 v0, 0x0

    .line 132
    :goto_1e
    iget-object v1, v10, Lcom/shabakaty/downloader/zo4;->g:[I

    aget v1, v1, v13

    add-int/2addr v1, v7

    move v11, v5

    move-object/from16 v41, v6

    .line 133
    iget-wide v5, v2, Lcom/shabakaty/downloader/wo4;->c:J

    move-wide/from16 v42, v5

    .line 134
    iget-wide v5, v10, Lcom/shabakaty/downloader/zo4;->q:J

    :goto_1f
    if-ge v7, v1, :cond_2d

    if-eqz v4, :cond_25

    .line 135
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v2

    goto :goto_20

    :cond_25
    iget v2, v12, Lcom/shabakaty/downloader/uo0;->b:I

    :goto_20
    invoke-static {v2}, Lcom/shabakaty/downloader/ol1;->c(I)I

    if-eqz v8, :cond_26

    .line 136
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v13

    goto :goto_21

    :cond_26
    iget v13, v12, Lcom/shabakaty/downloader/uo0;->c:I

    :goto_21
    invoke-static {v13}, Lcom/shabakaty/downloader/ol1;->c(I)I

    if-eqz v9, :cond_27

    .line 137
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v35

    move/from16 v44, v1

    move/from16 v1, v35

    goto :goto_22

    :cond_27
    if-nez v7, :cond_28

    if-eqz v3, :cond_28

    move/from16 v44, v1

    move/from16 v1, v28

    goto :goto_22

    :cond_28
    move/from16 v44, v1

    .line 138
    iget v1, v12, Lcom/shabakaty/downloader/uo0;->d:I

    :goto_22
    if-eqz v15, :cond_29

    move/from16 v45, v3

    .line 139
    invoke-virtual {v14}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v3

    move/from16 v46, v4

    int-to-long v3, v3

    const-wide/32 v35, 0xf4240

    mul-long v3, v3, v35

    .line 140
    div-long v3, v3, v42

    long-to-int v4, v3

    aput v4, v41, v7

    goto :goto_23

    :cond_29
    move/from16 v45, v3

    move/from16 v46, v4

    const/4 v3, 0x0

    .line 141
    aput v3, v41, v7

    :goto_23
    const-wide/32 v37, 0xf4240

    move-wide/from16 v35, v5

    move-wide/from16 v39, v42

    .line 142
    invoke-static/range {v35 .. v40}, Lcom/shabakaty/downloader/sy4;->N(JJJ)J

    move-result-wide v3

    sub-long v3, v3, v33

    aput-wide v3, v21, v7

    .line 143
    iget-boolean v3, v10, Lcom/shabakaty/downloader/zo4;->r:Z

    if-nez v3, :cond_2a

    .line 144
    aget-wide v3, v21, v7

    move/from16 v35, v8

    move-object/from16 v8, v31

    move/from16 v31, v9

    iget-object v9, v8, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    move/from16 v37, v11

    move-object/from16 v36, v12

    iget-wide v11, v9, Lcom/shabakaty/downloader/gp4;->h:J

    add-long/2addr v3, v11

    aput-wide v3, v21, v7

    goto :goto_24

    :cond_2a
    move/from16 v35, v8

    move/from16 v37, v11

    move-object/from16 v36, v12

    move-object/from16 v8, v31

    move/from16 v31, v9

    .line 145
    :goto_24
    aput v13, v20, v7

    shr-int/lit8 v1, v1, 0x10

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2c

    if-eqz v0, :cond_2b

    if-nez v7, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    goto :goto_25

    :cond_2c
    const/4 v1, 0x0

    .line 146
    :goto_25
    aput-boolean v1, v32, v7

    int-to-long v1, v2

    add-long/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v31

    move-object/from16 v12, v36

    move/from16 v11, v37

    move/from16 v1, v44

    move/from16 v3, v45

    move/from16 v4, v46

    move-object/from16 v31, v8

    move/from16 v8, v35

    goto/16 :goto_1f

    :cond_2d
    move/from16 v44, v1

    move/from16 v37, v11

    move-object/from16 v8, v31

    .line 147
    iput-wide v5, v10, Lcom/shabakaty/downloader/zo4;->q:J

    move/from16 v13, v19

    move/from16 v7, v44

    goto :goto_26

    :cond_2e
    move-object/from16 v29, v1

    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v37, v5

    move-object/from16 v30, v6

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v22, v10

    move-object v8, v11

    move/from16 v23, v12

    :goto_26
    add-int/lit8 v4, v27, 0x1

    const v2, 0x7472756e

    move-object/from16 v0, p0

    move-object v11, v8

    move-object/from16 v10, v22

    move/from16 v12, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v3, v26

    move-object/from16 v1, v29

    move-object/from16 v6, v30

    move/from16 v5, v37

    goto/16 :goto_15

    :cond_2f
    move-object/from16 v29, v1

    move-object/from16 v26, v3

    move/from16 v37, v5

    move-object/from16 v30, v6

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object v8, v11

    .line 148
    iget-object v0, v8, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v0, v0, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    move-object/from16 v1, v30

    iget-object v2, v1, Lcom/shabakaty/downloader/zo4;->a:Lcom/shabakaty/downloader/uo0;

    .line 149
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget v2, v2, Lcom/shabakaty/downloader/uo0;->a:I

    .line 151
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/wo4;->a(I)Lcom/shabakaty/downloader/xo4;

    move-result-object v0

    const v2, 0x7361697a

    .line 152
    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 153
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v2, v2, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 155
    iget v3, v0, Lcom/shabakaty/downloader/xo4;->d:I

    const/16 v4, 0x8

    .line 156
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 157
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_30

    .line 158
    invoke-virtual {v2, v4}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 159
    :cond_30
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v4

    .line 160
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v5

    .line 161
    iget v6, v1, Lcom/shabakaty/downloader/zo4;->e:I

    if-gt v5, v6, :cond_36

    if-nez v4, :cond_32

    .line 162
    iget-object v4, v1, Lcom/shabakaty/downloader/zo4;->m:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_27
    if-ge v6, v5, :cond_34

    .line 163
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v8

    add-int/2addr v7, v8

    if-le v8, v3, :cond_31

    const/4 v8, 0x1

    goto :goto_28

    :cond_31
    const/4 v8, 0x0

    .line 164
    :goto_28
    aput-boolean v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_32
    if-le v4, v3, :cond_33

    const/4 v2, 0x1

    goto :goto_29

    :cond_33
    const/4 v2, 0x0

    :goto_29
    mul-int v4, v4, v5

    const/4 v3, 0x0

    add-int/lit8 v7, v4, 0x0

    .line 165
    iget-object v4, v1, Lcom/shabakaty/downloader/zo4;->m:[Z

    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :cond_34
    const/4 v2, 0x0

    .line 166
    iget-object v3, v1, Lcom/shabakaty/downloader/zo4;->m:[Z

    iget v4, v1, Lcom/shabakaty/downloader/zo4;->e:I

    invoke-static {v3, v5, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_37

    .line 167
    iget-object v2, v1, Lcom/shabakaty/downloader/zo4;->o:Lcom/shabakaty/downloader/ka3;

    .line 168
    iget-object v3, v2, Lcom/shabakaty/downloader/ka3;->a:[B

    array-length v4, v3

    if-ge v4, v7, :cond_35

    .line 169
    new-array v3, v7, [B

    :cond_35
    invoke-virtual {v2, v3, v7}, Lcom/shabakaty/downloader/ka3;->C([BI)V

    const/4 v2, 0x1

    .line 170
    iput-boolean v2, v1, Lcom/shabakaty/downloader/zo4;->l:Z

    .line 171
    iput-boolean v2, v1, Lcom/shabakaty/downloader/zo4;->p:Z

    goto :goto_2a

    :cond_36
    const/16 v0, 0x4e

    const-string v1, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    .line 172
    invoke-static {v0, v1, v5, v2, v6}, Lcom/shabakaty/downloader/t74;->a(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pa3;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_37
    :goto_2a
    const v2, 0x7361696f

    .line 173
    invoke-virtual {v9, v2}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 174
    iget-object v2, v2, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v3, 0x8

    .line 175
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 176
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_38

    .line 177
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 178
    :cond_38
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->w()I

    move-result v3

    if-ne v3, v6, :cond_3a

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 179
    iget-wide v4, v1, Lcom/shabakaty/downloader/zo4;->c:J

    if-nez v3, :cond_39

    .line 180
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v2

    goto :goto_2b

    :cond_39
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ka3;->x()J

    move-result-wide v2

    :goto_2b
    add-long/2addr v4, v2

    iput-wide v4, v1, Lcom/shabakaty/downloader/zo4;->c:J

    goto :goto_2c

    :cond_3a
    const/16 v0, 0x28

    const-string v1, "Unexpected saio entry count: "

    const/4 v2, 0x0

    .line 181
    invoke-static {v0, v1, v3, v2}, Lcom/shabakaty/downloader/d55;->a(ILjava/lang/String;ILjava/lang/Throwable;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_3b
    :goto_2c
    const/4 v2, 0x0

    const v3, 0x73656e63

    .line 182
    invoke-virtual {v9, v3}, Lcom/shabakaty/downloader/zd$a;->c(I)Lcom/shabakaty/downloader/zd$b;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 183
    iget-object v3, v3, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/4 v4, 0x0

    .line 184
    invoke-static {v3, v4, v1}, Lcom/shabakaty/downloader/ol1;->j(Lcom/shabakaty/downloader/ka3;ILcom/shabakaty/downloader/zo4;)V

    :cond_3c
    if-eqz v0, :cond_3d

    .line 185
    iget-object v0, v0, Lcom/shabakaty/downloader/xo4;->b:Ljava/lang/String;

    move-object/from16 v40, v0

    goto :goto_2d

    :cond_3d
    move-object/from16 v40, v2

    :goto_2d
    const/4 v0, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 186
    :goto_2e
    iget-object v5, v9, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_40

    .line 187
    iget-object v5, v9, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/zd$b;

    .line 188
    iget-object v6, v5, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    .line 189
    iget v5, v5, Lcom/shabakaty/downloader/zd;->a:I

    const v7, 0x73626770

    const v8, 0x73656967

    if-ne v5, v7, :cond_3e

    const/16 v5, 0xc

    .line 190
    invoke-virtual {v6, v5}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 191
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    if-ne v5, v8, :cond_3f

    move-object v3, v6

    goto :goto_2f

    :cond_3e
    const/16 v7, 0xc

    const v10, 0x73677064

    if-ne v5, v10, :cond_3f

    .line 192
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 193
    invoke-virtual {v6}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v5

    if-ne v5, v8, :cond_3f

    move-object v4, v6

    :cond_3f
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    :cond_40
    if-eqz v3, :cond_4b

    if-nez v4, :cond_41

    goto/16 :goto_32

    :cond_41
    const/16 v0, 0x8

    .line 194
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 195
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x4

    .line 196
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    const/4 v6, 0x1

    if-ne v0, v6, :cond_42

    .line 197
    invoke-virtual {v3, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 198
    :cond_42
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v0

    if-ne v0, v6, :cond_4a

    const/16 v0, 0x8

    .line 199
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 200
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->f()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 201
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    if-ne v0, v6, :cond_44

    .line 202
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_43

    goto :goto_30

    :cond_43
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 203
    invoke-static {v0}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_44
    const/4 v3, 0x2

    if-lt v0, v3, :cond_45

    .line 204
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 205
    :cond_45
    :goto_30
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->u()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_49

    const/4 v0, 0x1

    .line 206
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/ka3;->F(I)V

    .line 207
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v3

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v43, v5, 0x4

    and-int/lit8 v44, v3, 0xf

    .line 208
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v3

    if-ne v3, v0, :cond_46

    const/4 v0, 0x1

    const/16 v39, 0x1

    goto :goto_31

    :cond_46
    const/4 v0, 0x0

    const/16 v39, 0x0

    :goto_31
    if-nez v39, :cond_47

    goto :goto_32

    .line 209
    :cond_47
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v41

    const/16 v0, 0x10

    new-array v3, v0, [B

    .line 210
    iget-object v5, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v6, v4, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iget v5, v4, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/shabakaty/downloader/ka3;->b:I

    if-nez v41, :cond_48

    .line 212
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka3;->t()I

    move-result v0

    .line 213
    new-array v2, v0, [B

    .line 214
    iget-object v5, v4, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v6, v4, Lcom/shabakaty/downloader/ka3;->b:I

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    iget v5, v4, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/shabakaty/downloader/ka3;->b:I

    :cond_48
    move-object/from16 v45, v2

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, v1, Lcom/shabakaty/downloader/zo4;->l:Z

    .line 217
    new-instance v0, Lcom/shabakaty/downloader/xo4;

    move-object/from16 v38, v0

    move-object/from16 v42, v3

    invoke-direct/range {v38 .. v45}, Lcom/shabakaty/downloader/xo4;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, Lcom/shabakaty/downloader/zo4;->n:Lcom/shabakaty/downloader/xo4;

    goto :goto_32

    :cond_49
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 218
    invoke-static {v0}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    :cond_4a
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 219
    invoke-static {v0}, Lcom/shabakaty/downloader/pa3;->c(Ljava/lang/String;)Lcom/shabakaty/downloader/pa3;

    move-result-object v0

    throw v0

    .line 220
    :cond_4b
    :goto_32
    iget-object v0, v9, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_33
    if-ge v2, v0, :cond_4e

    .line 221
    iget-object v3, v9, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/zd$b;

    .line 222
    iget v4, v3, Lcom/shabakaty/downloader/zd;->a:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_4d

    .line 223
    iget-object v3, v3, Lcom/shabakaty/downloader/zd$b;->b:Lcom/shabakaty/downloader/ka3;

    const/16 v4, 0x8

    .line 224
    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/ka3;->E(I)V

    .line 225
    iget-object v4, v3, Lcom/shabakaty/downloader/ka3;->a:[B

    iget v5, v3, Lcom/shabakaty/downloader/ka3;->b:I

    const/4 v6, 0x0

    const/16 v7, 0x10

    move-object/from16 v8, v29

    invoke-static {v4, v5, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget v4, v3, Lcom/shabakaty/downloader/ka3;->b:I

    add-int/2addr v4, v7

    iput v4, v3, Lcom/shabakaty/downloader/ka3;->b:I

    .line 227
    sget-object v4, Lcom/shabakaty/downloader/ol1;->I:[B

    invoke-static {v8, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4c

    goto :goto_34

    .line 228
    :cond_4c
    invoke-static {v3, v7, v1}, Lcom/shabakaty/downloader/ol1;->j(Lcom/shabakaty/downloader/ka3;ILcom/shabakaty/downloader/zo4;)V

    goto :goto_34

    :cond_4d
    move-object/from16 v8, v29

    :goto_34
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v8

    goto :goto_33

    :cond_4e
    move-object/from16 v8, v29

    goto :goto_36

    :cond_4f
    :goto_35
    move-object/from16 v16, v2

    move-object/from16 v26, v3

    move/from16 v18, v4

    move/from16 v37, v5

    move/from16 v17, v7

    move/from16 v24, v8

    move-object v8, v1

    :goto_36
    add-int/lit8 v0, v24, 0x1

    const/16 v6, 0x8

    move-object v1, v8

    move-object/from16 v2, v16

    move/from16 v7, v17

    move/from16 v4, v18

    move-object/from16 v3, v26

    move/from16 v5, v37

    move v8, v0

    move-object/from16 v0, p0

    goto/16 :goto_b

    :cond_50
    move-object/from16 v26, v3

    const/4 v0, 0x0

    move-object/from16 v2, v26

    .line 229
    iget-object v1, v2, Lcom/shabakaty/downloader/zd$a;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/shabakaty/downloader/ol1;->i(Ljava/util/List;)Lcom/shabakaty/downloader/o01;

    move-result-object v1

    move-object/from16 v3, p0

    if-eqz v1, :cond_52

    .line 230
    iget-object v2, v3, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_37
    if-ge v4, v2, :cond_52

    .line 231
    iget-object v5, v3, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ol1$b;

    .line 232
    iget-object v6, v5, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v6, v6, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    iget-object v7, v5, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget-object v7, v7, Lcom/shabakaty/downloader/zo4;->a:Lcom/shabakaty/downloader/uo0;

    .line 233
    sget v8, Lcom/shabakaty/downloader/sy4;->a:I

    iget v7, v7, Lcom/shabakaty/downloader/uo0;->a:I

    .line 234
    invoke-virtual {v6, v7}, Lcom/shabakaty/downloader/wo4;->a(I)Lcom/shabakaty/downloader/xo4;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 235
    iget-object v6, v6, Lcom/shabakaty/downloader/xo4;->b:Ljava/lang/String;

    goto :goto_38

    :cond_51
    move-object v6, v0

    .line 236
    :goto_38
    invoke-virtual {v1, v6}, Lcom/shabakaty/downloader/o01;->a(Ljava/lang/String;)Lcom/shabakaty/downloader/o01;

    move-result-object v6

    .line 237
    iget-object v7, v5, Lcom/shabakaty/downloader/ol1$b;->d:Lcom/shabakaty/downloader/gp4;

    iget-object v7, v7, Lcom/shabakaty/downloader/gp4;->a:Lcom/shabakaty/downloader/wo4;

    iget-object v7, v7, Lcom/shabakaty/downloader/wo4;->f:Lcom/shabakaty/downloader/wh1;

    .line 238
    invoke-virtual {v7}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v7

    .line 239
    iput-object v6, v7, Lcom/shabakaty/downloader/wh1$b;->n:Lcom/shabakaty/downloader/o01;

    .line 240
    invoke-virtual {v7}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v6

    .line 241
    iget-object v5, v5, Lcom/shabakaty/downloader/ol1$b;->a:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v5, v6}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    .line 242
    :cond_52
    iget-wide v0, v3, Lcom/shabakaty/downloader/ol1;->w:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v4

    if-eqz v2, :cond_56

    .line 243
    iget-object v0, v3, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_39
    if-ge v1, v0, :cond_55

    .line 244
    iget-object v2, v3, Lcom/shabakaty/downloader/ol1;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/ol1$b;

    iget-wide v4, v3, Lcom/shabakaty/downloader/ol1;->w:J

    .line 245
    iget v6, v2, Lcom/shabakaty/downloader/ol1$b;->f:I

    .line 246
    :goto_3a
    iget-object v7, v2, Lcom/shabakaty/downloader/ol1$b;->b:Lcom/shabakaty/downloader/zo4;

    iget v8, v7, Lcom/shabakaty/downloader/zo4;->e:I

    if-ge v6, v8, :cond_54

    .line 247
    iget-object v8, v7, Lcom/shabakaty/downloader/zo4;->j:[J

    aget-wide v9, v8, v6

    iget-object v8, v7, Lcom/shabakaty/downloader/zo4;->i:[I

    aget v8, v8, v6

    int-to-long v11, v8

    add-long/2addr v9, v11

    cmp-long v8, v9, v4

    if-gez v8, :cond_54

    .line 248
    iget-object v7, v7, Lcom/shabakaty/downloader/zo4;->k:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_53

    .line 249
    iput v6, v2, Lcom/shabakaty/downloader/ol1$b;->i:I

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    :cond_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_55
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 250
    iput-wide v0, v3, Lcom/shabakaty/downloader/ol1;->w:J

    :cond_56
    move-object v1, v3

    goto :goto_3b

    :cond_57
    move-object v2, v3

    move-object v3, v0

    .line 251
    iget-object v0, v1, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 252
    iget-object v0, v1, Lcom/shabakaty/downloader/ol1;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/zd$a;

    .line 253
    iget-object v0, v0, Lcom/shabakaty/downloader/zd$a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_3b
    move-object v0, v3

    goto/16 :goto_0

    :cond_59
    move-object v3, v0

    .line 254
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/ol1;->d()V

    return-void
.end method
