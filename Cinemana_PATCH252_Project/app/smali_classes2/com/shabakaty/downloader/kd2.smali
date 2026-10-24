.class public abstract Lcom/shabakaty/downloader/kd2;
.super Lcom/shabakaty/downloader/ac2;
.source "KPropertyImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/jd2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/kd2$a;,
        Lcom/shabakaty/downloader/kd2$b;,
        Lcom/shabakaty/downloader/kd2$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/ac2<",
        "TV;>;",
        "Lcom/shabakaty/downloader/jd2<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final y:Ljava/lang/Object;


# instance fields
.field public final s:Lcom/shabakaty/downloader/oc2;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/Object;

.field public final w:Lcom/shabakaty/downloader/cq3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$b<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/cq3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/cq3$a<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/kd2;->y:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Lcom/shabakaty/downloader/yh3;)V
    .locals 7

    .line 10
    invoke-interface {p2}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    invoke-static {p2}, Lcom/shabakaty/downloader/ov3;->c(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/tb2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/tb2;->a()Ljava/lang/String;

    move-result-object v4

    .line 12
    sget-object v6, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/kd2;-><init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/oc2;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/yh3;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/ac2;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/kd2;->t:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/kd2;->u:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/shabakaty/downloader/kd2;->v:Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/kd2$e;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/kd2$e;-><init>(Lcom/shabakaty/downloader/kd2;)V

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/kd2;->w:Lcom/shabakaty/downloader/cq3$b;

    .line 9
    new-instance p1, Lcom/shabakaty/downloader/kd2$d;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/kd2$d;-><init>(Lcom/shabakaty/downloader/kd2;)V

    invoke-static {p4, p1}, Lcom/shabakaty/downloader/cq3;->d(Ljava/lang/Object;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/kd2;->x:Lcom/shabakaty/downloader/cq3$a;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/er;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/er<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->j()Lcom/shabakaty/downloader/kd2$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2$b;->b()Lcom/shabakaty/downloader/er;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/oc2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    return-object v0
.end method

.method public bridge synthetic e()Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/ty4;->a:Lcom/shabakaty/downloader/fi1;

    .line 2
    instance-of v0, p1, Lcom/shabakaty/downloader/kd2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/kd2;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/shabakaty/downloader/ei3;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/shabakaty/downloader/ei3;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_2

    move-object p1, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/uq;->compute()Lcom/shabakaty/downloader/zb2;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lcom/shabakaty/downloader/kd2;

    if-eqz v0, :cond_4

    move-object v1, p1

    check-cast v1, Lcom/shabakaty/downloader/kd2;

    goto :goto_3

    :cond_3
    move-object v1, v0

    :cond_4
    :goto_3
    const/4 p1, 0x0

    if-nez v1, :cond_5

    return p1

    .line 3
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    iget-object v2, v1, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 4
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->t:Ljava/lang/String;

    iget-object v2, v1, Lcom/shabakaty/downloader/kd2;->t:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->u:Ljava/lang/String;

    iget-object v2, v1, Lcom/shabakaty/downloader/kd2;->u:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->v:Ljava/lang/Object;

    iget-object v1, v1, Lcom/shabakaty/downloader/kd2;->v:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    :cond_6
    return p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/uq;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/reflect/Member;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/yh3;->U()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ov3;->a:Lcom/shabakaty/downloader/ov3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/ov3;->c(Lcom/shabakaty/downloader/yh3;)Lcom/shabakaty/downloader/tb2;

    move-result-object v0

    .line 3
    instance-of v2, v0, Lcom/shabakaty/downloader/tb2$c;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/shabakaty/downloader/tb2$c;

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/tb2$c;->c:Lcom/shabakaty/downloader/ub2$d;

    .line 5
    iget v3, v2, Lcom/shabakaty/downloader/ub2$d;->s:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/ub2$d;->x:Lcom/shabakaty/downloader/ub2$c;

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ub2$c;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ub2$c;->i()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, v0, Lcom/shabakaty/downloader/tb2$c;->d:Lcom/shabakaty/downloader/jw2;

    .line 9
    iget v3, v2, Lcom/shabakaty/downloader/ub2$c;->t:I

    .line 10
    invoke-interface {v1, v3}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/tb2$c;->d:Lcom/shabakaty/downloader/jw2;

    .line 12
    iget v2, v2, Lcom/shabakaty/downloader/ub2$c;->u:I

    .line 13
    invoke-interface {v0, v2}, Lcom/shabakaty/downloader/jw2;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v2, p0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 15
    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/downloader/oc2;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object v1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->w:Lcom/shabakaty/downloader/cq3$b;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->s:Lcom/shabakaty/downloader/oc2;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/kd2;->t:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 4
    invoke-static {v1, v0, v2}, Lcom/shabakaty/downloader/ik4;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/shabakaty/downloader/kd2;->u:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public i()Lcom/shabakaty/downloader/yh3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2;->x:Lcom/shabakaty/downloader/cq3$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_descriptor()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/yh3;

    return-object v0
.end method

.method public abstract j()Lcom/shabakaty/downloader/kd2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/kd2$b<",
            "TV;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hq3;->a:Lcom/shabakaty/downloader/hq3;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2;->i()Lcom/shabakaty/downloader/yh3;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/hq3;->d(Lcom/shabakaty/downloader/yh3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
