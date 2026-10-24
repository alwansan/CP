.class public final Lcom/shabakaty/downloader/f66;
.super Ljava/lang/Object;


# instance fields
.field public A:Ljava/lang/reflect/Field;

.field public B:Ljava/lang/Object;

.field public C:Ljava/lang/Object;

.field public D:Ljava/lang/Object;

.field public final a:Lcom/shabakaty/downloader/k66;

.field public final b:[Ljava/lang/Object;

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:[I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/shabakaty/downloader/f66;->p:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/shabakaty/downloader/f66;->q:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/f66;->r:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->s:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->t:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->u:I

    iput-object p1, p0, Lcom/shabakaty/downloader/f66;->c:Ljava/lang/Class;

    new-instance p1, Lcom/shabakaty/downloader/k66;

    invoke-direct {p1, p2, v0}, Lcom/shabakaty/downloader/k66;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/shabakaty/downloader/f66;->a:Lcom/shabakaty/downloader/k66;

    iput-object p3, p0, Lcom/shabakaty/downloader/f66;->b:[Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/f66;->d:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/f66;->e:I

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iput v0, p0, Lcom/shabakaty/downloader/f66;->f:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->g:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->h:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->i:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->k:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->j:I

    iput v0, p0, Lcom/shabakaty/downloader/f66;->l:I

    iput-object p3, p0, Lcom/shabakaty/downloader/f66;->m:[I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result p2

    iput p2, p0, Lcom/shabakaty/downloader/f66;->f:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/f66;->g:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/f66;->h:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/f66;->k:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/f66;->j:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/f66;->i:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, p0, Lcom/shabakaty/downloader/f66;->l:I

    invoke-virtual {p1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-array p3, p1, [I

    :goto_0
    iput-object p3, p0, Lcom/shabakaty/downloader/f66;->m:[I

    shl-int/lit8 p1, p2, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/shabakaty/downloader/f66;->n:I

    return-void
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28

    invoke-static {p1, v2}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "Field "

    const-string v4, " for "

    invoke-static {v2, v3, p1, v4, p0}, Lcom/shabakaty/downloader/nl3;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found. Known fields are "

    invoke-static {p0, p1, v0}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->a:Lcom/shabakaty/downloader/k66;

    .line 1
    iget v2, v1, Lcom/shabakaty/downloader/k66;->c:I

    iget-object v1, v1, Lcom/shabakaty/downloader/k66;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return v3

    .line 2
    :cond_1
    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->a:Lcom/shabakaty/downloader/k66;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/f66;->v:I

    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->a:Lcom/shabakaty/downloader/k66;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/f66;->w:I

    and-int/lit16 v2, v1, 0xff

    iput v2, v0, Lcom/shabakaty/downloader/f66;->x:I

    iget v5, v0, Lcom/shabakaty/downloader/f66;->v:I

    iget v6, v0, Lcom/shabakaty/downloader/f66;->p:I

    if-ge v5, v6, :cond_2

    iput v5, v0, Lcom/shabakaty/downloader/f66;->p:I

    :cond_2
    iget v6, v0, Lcom/shabakaty/downloader/f66;->q:I

    if-le v5, v6, :cond_3

    iput v5, v0, Lcom/shabakaty/downloader/f66;->q:I

    :cond_3
    sget-object v6, Lcom/shabakaty/downloader/gu5;->C:Lcom/shabakaty/downloader/gu5;

    .line 3
    iget v7, v6, Lcom/shabakaty/downloader/gu5;->r:I

    if-ne v2, v7, :cond_4

    .line 4
    iget v8, v0, Lcom/shabakaty/downloader/f66;->r:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/shabakaty/downloader/f66;->r:I

    goto :goto_1

    :cond_4
    sget-object v8, Lcom/shabakaty/downloader/gu5;->v:Lcom/shabakaty/downloader/gu5;

    .line 5
    iget v8, v8, Lcom/shabakaty/downloader/gu5;->r:I

    if-lt v2, v8, :cond_5

    .line 6
    sget-object v8, Lcom/shabakaty/downloader/gu5;->B:Lcom/shabakaty/downloader/gu5;

    .line 7
    iget v8, v8, Lcom/shabakaty/downloader/gu5;->r:I

    if-gt v2, v8, :cond_5

    .line 8
    iget v8, v0, Lcom/shabakaty/downloader/f66;->s:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/shabakaty/downloader/f66;->s:I

    :cond_5
    :goto_1
    iget v8, v0, Lcom/shabakaty/downloader/f66;->u:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/shabakaty/downloader/f66;->u:I

    iget v9, v0, Lcom/shabakaty/downloader/f66;->p:I

    sget-object v10, Lcom/shabakaty/downloader/y66;->a:Ljava/lang/Class;

    const/16 v10, 0x28

    if-ge v5, v10, :cond_6

    goto :goto_2

    :cond_6
    int-to-long v10, v5

    int-to-long v12, v9

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    const-wide/16 v12, 0x2

    int-to-long v14, v8

    mul-long v12, v12, v14

    const-wide/16 v16, 0x3

    add-long v12, v12, v16

    add-long v14, v14, v16

    const-wide/16 v18, 0x9

    add-long v10, v10, v18

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    cmp-long v8, v10, v14

    if-gtz v8, :cond_7

    :goto_2
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_8

    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, v9

    goto :goto_4

    :cond_8
    iget v8, v0, Lcom/shabakaty/downloader/f66;->t:I

    add-int/2addr v8, v4

    :goto_4
    iput v8, v0, Lcom/shabakaty/downloader/f66;->t:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->m:[I

    iget v8, v0, Lcom/shabakaty/downloader/f66;->o:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lcom/shabakaty/downloader/f66;->o:I

    aput v5, v1, v8

    :cond_a
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->B:Ljava/lang/Object;

    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->C:Ljava/lang/Object;

    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->D:Ljava/lang/Object;

    if-le v2, v7, :cond_b

    const/4 v1, 0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->a:Lcom/shabakaty/downloader/k66;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/f66;->y:I

    iget v1, v0, Lcom/shabakaty/downloader/f66;->x:I

    sget-object v2, Lcom/shabakaty/downloader/gu5;->s:Lcom/shabakaty/downloader/gu5;

    .line 9
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    add-int/lit8 v2, v2, 0x33

    if-eq v1, v2, :cond_14

    .line 10
    sget-object v2, Lcom/shabakaty/downloader/gu5;->u:Lcom/shabakaty/downloader/gu5;

    .line 11
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    add-int/lit8 v2, v2, 0x33

    if-ne v1, v2, :cond_c

    goto/16 :goto_9

    .line 12
    :cond_c
    sget-object v2, Lcom/shabakaty/downloader/gu5;->t:Lcom/shabakaty/downloader/gu5;

    .line 13
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    add-int/lit8 v2, v2, 0x33

    if-ne v1, v2, :cond_16

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->c:Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/f66;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->A:Ljava/lang/reflect/Field;

    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->e()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->a:Lcom/shabakaty/downloader/k66;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/k66;->l()I

    move-result v1

    iput v1, v0, Lcom/shabakaty/downloader/f66;->z:I

    :cond_e
    iget v1, v0, Lcom/shabakaty/downloader/f66;->x:I

    sget-object v2, Lcom/shabakaty/downloader/gu5;->s:Lcom/shabakaty/downloader/gu5;

    .line 15
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-eq v1, v2, :cond_15

    .line 16
    sget-object v2, Lcom/shabakaty/downloader/gu5;->u:Lcom/shabakaty/downloader/gu5;

    .line 17
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-ne v1, v2, :cond_f

    goto :goto_a

    .line 18
    :cond_f
    sget-object v2, Lcom/shabakaty/downloader/gu5;->w:Lcom/shabakaty/downloader/gu5;

    .line 19
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-eq v1, v2, :cond_14

    .line 20
    sget-object v2, Lcom/shabakaty/downloader/gu5;->B:Lcom/shabakaty/downloader/gu5;

    .line 21
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-ne v1, v2, :cond_10

    goto :goto_9

    .line 22
    :cond_10
    sget-object v2, Lcom/shabakaty/downloader/gu5;->t:Lcom/shabakaty/downloader/gu5;

    .line 23
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-eq v1, v2, :cond_13

    .line 24
    sget-object v2, Lcom/shabakaty/downloader/gu5;->x:Lcom/shabakaty/downloader/gu5;

    .line 25
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-eq v1, v2, :cond_13

    .line 26
    sget-object v2, Lcom/shabakaty/downloader/gu5;->z:Lcom/shabakaty/downloader/gu5;

    .line 27
    iget v2, v2, Lcom/shabakaty/downloader/gu5;->r:I

    if-ne v1, v2, :cond_11

    goto :goto_7

    :cond_11
    iget v2, v6, Lcom/shabakaty/downloader/gu5;->r:I

    if-ne v1, v2, :cond_16

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->c()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->D:Ljava/lang/Object;

    iget v1, v0, Lcom/shabakaty/downloader/f66;->w:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    :cond_12
    if-eqz v3, :cond_16

    goto :goto_8

    :cond_13
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->d()Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->c()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->C:Ljava/lang/Object;

    goto :goto_c

    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/f66;->c()Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_15
    :goto_a
    iget-object v1, v0, Lcom/shabakaty/downloader/f66;->A:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    :goto_b
    iput-object v1, v0, Lcom/shabakaty/downloader/f66;->B:Ljava/lang/Object;

    :cond_16
    :goto_c
    return v4
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/f66;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/shabakaty/downloader/f66;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/shabakaty/downloader/f66;->n:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/shabakaty/downloader/f66;->d:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/f66;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/shabakaty/downloader/f66;->x:I

    sget-object v1, Lcom/shabakaty/downloader/gu5;->u:Lcom/shabakaty/downloader/gu5;

    .line 1
    iget v1, v1, Lcom/shabakaty/downloader/gu5;->r:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
