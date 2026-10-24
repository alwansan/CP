.class public final Lcom/shabakaty/downloader/bs0;
.super Ljava/lang/Object;
.source "DeserializedDescriptorResolver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/bs0$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/shabakaty/downloader/bs0$a;

.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/be2$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/be2$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/shabakaty/downloader/ob2;

.field public static final f:Lcom/shabakaty/downloader/ob2;

.field public static final g:Lcom/shabakaty/downloader/ob2;


# instance fields
.field public a:Lcom/shabakaty/downloader/or0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/shabakaty/downloader/bs0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/bs0$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/bs0;->b:Lcom/shabakaty/downloader/bs0$a;

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/be2$a;->u:Lcom/shabakaty/downloader/be2$a;

    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->s(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/bs0;->c:Ljava/util/Set;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/shabakaty/downloader/be2$a;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/be2$a;->v:Lcom/shabakaty/downloader/be2$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/downloader/be2$a;->y:Lcom/shabakaty/downloader/be2$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/shabakaty/downloader/nl6;->t([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/bs0;->d:Ljava/util/Set;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/ob2;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ob2;-><init>([I)V

    sput-object v0, Lcom/shabakaty/downloader/bs0;->e:Lcom/shabakaty/downloader/ob2;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ob2;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/ob2;-><init>([I)V

    sput-object v0, Lcom/shabakaty/downloader/bs0;->f:Lcom/shabakaty/downloader/ob2;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ob2;

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ob2;-><init>([I)V

    sput-object v0, Lcom/shabakaty/downloader/bs0;->g:Lcom/shabakaty/downloader/ob2;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0xb
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0xd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/mr2;
    .locals 12

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClass"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bs0;->d:Ljava/util/Set;

    invoke-virtual {p0, p2, v0}, Lcom/shabakaty/downloader/bs0;->g(Lcom/shabakaty/downloader/he2;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p2}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/be2;->e:[Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vb2;->h([Ljava/lang/String;[Ljava/lang/String;)Lcom/shabakaty/downloader/x93;

    move-result-object v0
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read data from "

    invoke-interface {p2}, Lcom/shabakaty/downloader/he2;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/qr0;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-interface {p2}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ob2;->c()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    .line 12
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/shabakaty/downloader/pb2;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/ti3;

    .line 16
    new-instance v9, Lcom/shabakaty/downloader/qb2;

    .line 17
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/bs0;->d(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/f02;

    move-result-object v6

    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/bs0;->e(Lcom/shabakaty/downloader/he2;)Z

    move-result v7

    .line 18
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/bs0;->b(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/zr0;

    move-result-object v8

    move-object v2, v9

    move-object v3, p2

    move-object v4, v0

    move-object v5, v1

    .line 19
    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/downloader/qb2;-><init>(Lcom/shabakaty/downloader/he2;Lcom/shabakaty/downloader/ti3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/f02;ZLcom/shabakaty/downloader/zr0;)V

    .line 20
    new-instance v11, Lcom/shabakaty/downloader/gs0;

    .line 21
    invoke-interface {p2}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object p2

    .line 22
    iget-object v6, p2, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v8

    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scope for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    sget-object v10, Lcom/shabakaty/downloader/bs0$b;->r:Lcom/shabakaty/downloader/bs0$b;

    move-object v2, v11

    move-object v3, p1

    move-object v7, v9

    move-object v9, p2

    .line 26
    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/gs0;-><init>(Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/ti3;Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/as0;Lcom/shabakaty/downloader/or0;Ljava/lang/String;Lcom/shabakaty/downloader/rm1;)V

    return-object v11

    .line 27
    :cond_3
    throw v0
.end method

.method public final b(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/zr0;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zr0;->r:Lcom/shabakaty/downloader/zr0;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 3
    invoke-interface {v1}, Lcom/shabakaty/downloader/qr0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v1

    .line 5
    iget v2, v1, Lcom/shabakaty/downloader/be2;->g:I

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/be2;->b(II)Z

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/shabakaty/downloader/be2;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/be2;->b(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/zr0;->s:Lcom/shabakaty/downloader/zr0;

    goto :goto_1

    .line 7
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object p1

    .line 8
    iget v1, p1, Lcom/shabakaty/downloader/be2;->g:I

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Lcom/shabakaty/downloader/be2;->b(II)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/shabakaty/downloader/be2;->g:I

    invoke-virtual {p1, v1, v3}, Lcom/shabakaty/downloader/be2;->b(II)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/zr0;->t:Lcom/shabakaty/downloader/zr0;

    :cond_4
    :goto_1
    return-object v0
.end method

.method public final c()Lcom/shabakaty/downloader/or0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bs0;->a:Lcom/shabakaty/downloader/or0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "components"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/f02;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/he2;",
            ")",
            "Lcom/shabakaty/downloader/f02<",
            "Lcom/shabakaty/downloader/ob2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/qr0;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ob2;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/f02;

    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 9
    sget-object v2, Lcom/shabakaty/downloader/ob2;->g:Lcom/shabakaty/downloader/ob2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->f()Lcom/shabakaty/downloader/v20;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/shabakaty/downloader/f02;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Lcom/shabakaty/downloader/v20;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lcom/shabakaty/downloader/he2;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/qr0;->e()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v0

    .line 5
    iget v4, v0, Lcom/shabakaty/downloader/be2;->g:I

    invoke-virtual {v0, v4, v3}, Lcom/shabakaty/downloader/be2;->b(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 8
    sget-object v4, Lcom/shabakaty/downloader/bs0;->e:Lcom/shabakaty/downloader/ob2;

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 11
    invoke-interface {v0}, Lcom/shabakaty/downloader/qr0;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v0

    .line 13
    iget v4, v0, Lcom/shabakaty/downloader/be2;->g:I

    invoke-virtual {v0, v4, v3}, Lcom/shabakaty/downloader/be2;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 16
    sget-object v0, Lcom/shabakaty/downloader/bs0;->f:Lcom/shabakaty/downloader/ob2;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final f(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/n20;
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/bs0;->c:Ljava/util/Set;

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/bs0;->g(Lcom/shabakaty/downloader/he2;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v2

    .line 3
    iget-object v2, v2, Lcom/shabakaty/downloader/be2;->e:[Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    :try_start_0
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/vb2;->f([Ljava/lang/String;[Ljava/lang/String;)Lcom/shabakaty/downloader/x93;

    move-result-object v0
    :try_end_0
    .catch Lcom/shabakaty/downloader/s32; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read data from "

    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bs0;->c()Lcom/shabakaty/downloader/or0;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lcom/shabakaty/downloader/or0;->c:Lcom/shabakaty/downloader/qr0;

    .line 8
    invoke-interface {v2}, Lcom/shabakaty/downloader/qr0;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ob2;->c()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    return-object v1

    .line 12
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 13
    check-cast v1, Lcom/shabakaty/downloader/pb2;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/x93;->s:Ljava/lang/Object;

    .line 15
    check-cast v0, Lcom/shabakaty/downloader/ji3;

    .line 16
    new-instance v2, Lcom/shabakaty/downloader/je2;

    .line 17
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bs0;->d(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/f02;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bs0;->e(Lcom/shabakaty/downloader/he2;)Z

    move-result v4

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/bs0;->b(Lcom/shabakaty/downloader/he2;)Lcom/shabakaty/downloader/zr0;

    move-result-object v5

    .line 18
    invoke-direct {v2, p1, v3, v4, v5}, Lcom/shabakaty/downloader/je2;-><init>(Lcom/shabakaty/downloader/he2;Lcom/shabakaty/downloader/f02;ZLcom/shabakaty/downloader/zr0;)V

    .line 19
    new-instance v3, Lcom/shabakaty/downloader/n20;

    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object p1

    .line 20
    iget-object p1, p1, Lcom/shabakaty/downloader/be2;->b:Lcom/shabakaty/downloader/ob2;

    .line 21
    invoke-direct {v3, v1, v0, p1, v2}, Lcom/shabakaty/downloader/n20;-><init>(Lcom/shabakaty/downloader/jw2;Lcom/shabakaty/downloader/ji3;Lcom/shabakaty/downloader/gm;Lcom/shabakaty/downloader/s94;)V

    return-object v3

    .line 22
    :cond_3
    throw v0
.end method

.method public final g(Lcom/shabakaty/downloader/he2;Ljava/util/Set;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/he2;",
            "Ljava/util/Set<",
            "+",
            "Lcom/shabakaty/downloader/be2$a;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/he2;->i()Lcom/shabakaty/downloader/be2;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/be2;->c:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/be2;->d:[Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/be2;->a:Lcom/shabakaty/downloader/be2$a;

    .line 5
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0
.end method
