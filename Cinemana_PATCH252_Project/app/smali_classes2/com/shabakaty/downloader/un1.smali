.class public final Lcom/shabakaty/downloader/un1;
.super Lcom/shabakaty/downloader/p;
.source "FunctionClassDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/un1$a;
    }
.end annotation


# static fields
.field public static final C:Lcom/shabakaty/downloader/v20;

.field public static final D:Lcom/shabakaty/downloader/v20;


# instance fields
.field public final A:Lcom/shabakaty/downloader/wn1;

.field public final B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lcom/shabakaty/downloader/md4;

.field public final w:Lcom/shabakaty/downloader/k93;

.field public final x:Lcom/shabakaty/downloader/vn1;

.field public final y:I

.field public final z:Lcom/shabakaty/downloader/un1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/v20;

    sget-object v1, Lcom/shabakaty/downloader/tb4;->i:Lcom/shabakaty/downloader/fi1;

    const-string v2, "Function"

    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    sput-object v0, Lcom/shabakaty/downloader/un1;->C:Lcom/shabakaty/downloader/v20;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/v20;

    sget-object v1, Lcom/shabakaty/downloader/tb4;->f:Lcom/shabakaty/downloader/fi1;

    const-string v2, "KFunction"

    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/v20;-><init>(Lcom/shabakaty/downloader/fi1;Lcom/shabakaty/downloader/hw2;)V

    sput-object v0, Lcom/shabakaty/downloader/un1;->D:Lcom/shabakaty/downloader/v20;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/k93;Lcom/shabakaty/downloader/vn1;I)V
    .locals 2

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionKind"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p3, p4}, Lcom/shabakaty/downloader/vn1;->f(I)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/shabakaty/downloader/p;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/hw2;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/un1;->v:Lcom/shabakaty/downloader/md4;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/un1;->w:Lcom/shabakaty/downloader/k93;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/un1;->x:Lcom/shabakaty/downloader/vn1;

    .line 5
    iput p4, p0, Lcom/shabakaty/downloader/un1;->y:I

    .line 6
    new-instance p2, Lcom/shabakaty/downloader/un1$a;

    invoke-direct {p2, p0}, Lcom/shabakaty/downloader/un1$a;-><init>(Lcom/shabakaty/downloader/un1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/un1;->z:Lcom/shabakaty/downloader/un1$a;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/wn1;

    invoke-direct {p2, p1, p0}, Lcom/shabakaty/downloader/wn1;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/un1;)V

    iput-object p2, p0, Lcom/shabakaty/downloader/un1;->A:Lcom/shabakaty/downloader/wn1;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/n22;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p4}, Lcom/shabakaty/downloader/n22;-><init>(II)V

    .line 10
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0xa

    invoke-static {p2, p4}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-virtual {p2}, Lcom/shabakaty/downloader/l22;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    move-object p4, p2

    check-cast p4, Lcom/shabakaty/downloader/m22;

    .line 12
    iget-boolean p4, p4, Lcom/shabakaty/downloader/m22;->t:Z

    if-eqz p4, :cond_0

    .line 13
    move-object p4, p2

    check-cast p4, Lcom/shabakaty/downloader/k22;

    invoke-virtual {p4}, Lcom/shabakaty/downloader/k22;->a()I

    move-result p4

    .line 14
    sget-object v0, Lcom/shabakaty/downloader/xz4;->u:Lcom/shabakaty/downloader/xz4;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "P"

    invoke-static {v1, p4}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p0, v0, p4}, Lcom/shabakaty/downloader/un1;->T0(Ljava/util/ArrayList;Lcom/shabakaty/downloader/un1;Lcom/shabakaty/downloader/xz4;Ljava/lang/String;)V

    .line 15
    sget-object p4, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    sget-object p2, Lcom/shabakaty/downloader/xz4;->v:Lcom/shabakaty/downloader/xz4;

    const-string p3, "R"

    invoke-static {p1, p0, p2, p3}, Lcom/shabakaty/downloader/un1;->T0(Ljava/util/ArrayList;Lcom/shabakaty/downloader/un1;Lcom/shabakaty/downloader/xz4;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/un1;->B:Ljava/util/List;

    return-void
.end method

.method public static final T0(Ljava/util/ArrayList;Lcom/shabakaty/downloader/un1;Lcom/shabakaty/downloader/xz4;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;",
            "Lcom/shabakaty/downloader/un1;",
            "Lcom/shabakaty/downloader/xz4;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v2, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    invoke-static {p3}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v7, p1, Lcom/shabakaty/downloader/un1;->v:Lcom/shabakaty/downloader/md4;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    .line 2
    invoke-static/range {v1 .. v7}, Lcom/shabakaty/downloader/lt4;->Y0(Lcom/shabakaty/downloader/qm0;Lcom/shabakaty/downloader/d9;ZLcom/shabakaty/downloader/xz4;Lcom/shabakaty/downloader/hw2;ILcom/shabakaty/downloader/md4;)Lcom/shabakaty/downloader/kt4;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/kt4;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1;->B:Ljava/util/List;

    return-object v0
.end method

.method public C()Lcom/shabakaty/downloader/a12;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/a12<",
            "Lcom/shabakaty/downloader/b74;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public J()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/un1;->A:Lcom/shabakaty/downloader/wn1;

    return-object p1
.end method

.method public bridge synthetic Q()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public Q0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public R()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public S()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public T()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic Y()Lcom/shabakaty/downloader/l20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic Z()Lcom/shabakaty/downloader/mr2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/mr2$b;->b:Lcom/shabakaty/downloader/mr2$b;

    return-object v0
.end method

.method public bridge synthetic b0()Lcom/shabakaty/downloader/q20;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/qm0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1;->w:Lcom/shabakaty/downloader/k93;

    return-object v0
.end method

.method public g()Lcom/shabakaty/downloader/mr0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lr0;->e:Lcom/shabakaty/downloader/mr0;

    const-string v1, "PUBLIC"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public k()Lcom/shabakaty/downloader/s94;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/s94;->a:Lcom/shabakaty/downloader/s94;

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m()Lcom/shabakaty/downloader/ts4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/un1;->z:Lcom/shabakaty/downloader/un1$a;

    return-object v0
.end method

.method public n()Lcom/shabakaty/downloader/eu2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/eu2;->u:Lcom/shabakaty/downloader/eu2;

    return-object v0
.end method

.method public bridge synthetic o()Ljava/util/Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public w()Lcom/shabakaty/downloader/w20;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/w20;->s:Lcom/shabakaty/downloader/w20;

    return-object v0
.end method

.method public y()Lcom/shabakaty/downloader/d9;
    .locals 1

    .line 1
    sget v0, Lcom/shabakaty/downloader/d9;->a:I

    sget-object v0, Lcom/shabakaty/downloader/d9$a;->b:Lcom/shabakaty/downloader/d9;

    return-object v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
