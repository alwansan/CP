.class public final Lcom/shabakaty/downloader/gs4;
.super Lcom/shabakaty/downloader/yn1;
.source "TypeAliasConstructorDescriptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/fs4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/gs4$a;
    }
.end annotation


# static fields
.field public static final X:Lcom/shabakaty/downloader/gs4$a;

.field public static final synthetic Y:[Lcom/shabakaty/downloader/jd2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final U:Lcom/shabakaty/downloader/md4;

.field public final V:Lcom/shabakaty/downloader/hs4;

.field public W:Lcom/shabakaty/downloader/l20;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/gs4;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/gs4;->Y:[Lcom/shabakaty/downloader/jd2;

    new-instance v0, Lcom/shabakaty/downloader/gs4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/gs4$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/gs4;->X:Lcom/shabakaty/downloader/gs4$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/l20;Lcom/shabakaty/downloader/fs4;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V
    .locals 7

    .line 1
    sget-object v4, Lcom/shabakaty/downloader/ca4;->f:Lcom/shabakaty/downloader/hw2;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/shabakaty/downloader/yn1;-><init>(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/gs4;->U:Lcom/shabakaty/downloader/md4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 4
    invoke-interface {p2}, Lcom/shabakaty/downloader/ir2;->N0()Z

    move-result p2

    .line 5
    iput-boolean p2, p0, Lcom/shabakaty/downloader/yn1;->I:Z

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/gs4$b;

    invoke-direct {p2, p0, p3}, Lcom/shabakaty/downloader/gs4$b;-><init>(Lcom/shabakaty/downloader/gs4;Lcom/shabakaty/downloader/l20;)V

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/md4;->d(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/w13;

    .line 7
    iput-object p3, p0, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/vc0;->H()Z

    move-result v0

    return v0
.end method

.method public I()Lcom/shabakaty/downloader/q20;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    .line 2
    invoke-interface {v0}, Lcom/shabakaty/downloader/vc0;->I()Lcom/shabakaty/downloader/q20;

    move-result-object v0

    const-string v1, "underlyingConstructorDescriptor.constructedClass"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic S0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/xn1;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/shabakaty/downloader/gs4;->c1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/fs4;

    move-result-object p1

    return-object p1
.end method

.method public T0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/xn1;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/s94;)Lcom/shabakaty/downloader/yn1;
    .locals 8

    const-string p2, "newOwner"

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "kind"

    invoke-static {p3, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "annotations"

    invoke-static {p5, p1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v6, Lcom/shabakaty/downloader/tq$a;->r:Lcom/shabakaty/downloader/tq$a;

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/gs4;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/gs4;->U:Lcom/shabakaty/downloader/md4;

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    .line 6
    iget-object v3, p0, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p5

    move-object v7, p6

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/gs4;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hs4;Lcom/shabakaty/downloader/l20;Lcom/shabakaty/downloader/fs4;Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/tq$a;Lcom/shabakaty/downloader/s94;)V

    return-object p1
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs4;->d1()Lcom/shabakaty/downloader/fs4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/rq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs4;->d1()Lcom/shabakaty/downloader/fs4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/tq;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs4;->d1()Lcom/shabakaty/downloader/fs4;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Lcom/shabakaty/downloader/xn1;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs4;->d1()Lcom/shabakaty/downloader/fs4;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/h30;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4;->V:Lcom/shabakaty/downloader/hs4;

    return-object v0
.end method

.method public c1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/fs4;
    .locals 1

    const-string v0, "newOwner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yn1;->A()Lcom/shabakaty/downloader/xn1$a;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/shabakaty/downloader/yn1$c;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/yn1$c;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/xn1$a;

    .line 3
    invoke-interface {v0, p2}, Lcom/shabakaty/downloader/xn1$a;->f(Lcom/shabakaty/downloader/eu2;)Lcom/shabakaty/downloader/xn1$a;

    .line 4
    invoke-interface {v0, p3}, Lcom/shabakaty/downloader/xn1$a;->e(Lcom/shabakaty/downloader/mr0;)Lcom/shabakaty/downloader/xn1$a;

    .line 5
    invoke-interface {v0, p4}, Lcom/shabakaty/downloader/xn1$a;->b(Lcom/shabakaty/downloader/tq$a;)Lcom/shabakaty/downloader/xn1$a;

    .line 6
    invoke-interface {v0, p5}, Lcom/shabakaty/downloader/xn1$a;->i(Z)Lcom/shabakaty/downloader/xn1$a;

    .line 7
    invoke-interface {v0}, Lcom/shabakaty/downloader/xn1$a;->build()Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    .line 8
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/fs4;

    return-object p1
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/sm0;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gs4;->e1(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/fs4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/vc0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gs4;->e1(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/fs4;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/gs4;->e1(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/fs4;

    move-result-object p1

    return-object p1
.end method

.method public d1()Lcom/shabakaty/downloader/fs4;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shabakaty/downloader/yn1;->a()Lcom/shabakaty/downloader/xn1;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/fs4;

    return-object v0
.end method

.method public e1(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/fs4;
    .locals 2

    const-string v0, "substitutor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/shabakaty/downloader/yn1;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/xn1;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/gs4;

    .line 2
    iget-object v0, p1, Lcom/shabakaty/downloader/yn1;->x:Lcom/shabakaty/downloader/qe2;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/wt4;->d(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/wt4;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/l20;->a()Lcom/shabakaty/downloader/l20;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/l20;->d(Lcom/shabakaty/downloader/wt4;)Lcom/shabakaty/downloader/l20;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    iput-object v0, p1, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    return-object p1
.end method

.method public bridge synthetic g0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/tq;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/shabakaty/downloader/gs4;->c1(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/eu2;Lcom/shabakaty/downloader/mr0;Lcom/shabakaty/downloader/tq$a;Z)Lcom/shabakaty/downloader/fs4;

    move-result-object p1

    return-object p1
.end method

.method public h()Lcom/shabakaty/downloader/qe2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yn1;->x:Lcom/shabakaty/downloader/qe2;

    .line 2
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic w0()Lcom/shabakaty/downloader/vm0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/gs4;->d1()Lcom/shabakaty/downloader/fs4;

    move-result-object v0

    return-object v0
.end method

.method public y0()Lcom/shabakaty/downloader/l20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/gs4;->W:Lcom/shabakaty/downloader/l20;

    return-object v0
.end method
