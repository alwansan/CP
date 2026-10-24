.class public final Lcom/shabakaty/downloader/dd2;
.super Ljava/lang/Object;
.source "KParameterImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/cd2;


# static fields
.field public static final synthetic e:[Lcom/shabakaty/downloader/jd2;
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
.field public final a:Lcom/shabakaty/downloader/ac2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ac2<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Lcom/shabakaty/downloader/cd2$a;

.field public final d:Lcom/shabakaty/downloader/cq3$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/dd2;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "annotations"

    const-string v4, "getAnnotations()Ljava/util/List;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/dd2;->e:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ac2;ILcom/shabakaty/downloader/cd2$a;Lcom/shabakaty/downloader/rm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ac2<",
            "*>;I",
            "Lcom/shabakaty/downloader/cd2$a;",
            "Lcom/shabakaty/downloader/rm1<",
            "+",
            "Lcom/shabakaty/downloader/aa3;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callable"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/dd2;->a:Lcom/shabakaty/downloader/ac2;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/dd2;->b:I

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/dd2;->c:Lcom/shabakaty/downloader/cd2$a;

    .line 5
    invoke-static {p4}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/dd2;->d:Lcom/shabakaty/downloader/cq3$a;

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/dd2$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/dd2$a;-><init>(Lcom/shabakaty/downloader/dd2;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/dd2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/dd2;->a:Lcom/shabakaty/downloader/ac2;

    check-cast p1, Lcom/shabakaty/downloader/dd2;

    iget-object v1, p1, Lcom/shabakaty/downloader/dd2;->a:Lcom/shabakaty/downloader/ac2;

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shabakaty/downloader/dd2;->b:I

    iget p1, p1, Lcom/shabakaty/downloader/dd2;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dd2;->d:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/dd2;->e:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-descriptor>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/aa3;

    .line 4
    instance-of v1, v0, Lcom/shabakaty/downloader/sz4;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/shabakaty/downloader/sz4;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 5
    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/sz4;->c()Lcom/shabakaty/downloader/rq;

    move-result-object v1

    invoke-interface {v1}, Lcom/shabakaty/downloader/rq;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    .line 6
    :cond_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/qm0;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    const-string v1, "valueParameter.name"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean v1, v0, Lcom/shabakaty/downloader/hw2;->s:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/dd2;->a:Lcom/shabakaty/downloader/ac2;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/dd2;->b:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/hq3;->a:Lcom/shabakaty/downloader/hq3;

    const-string v0, "parameter"

    .line 2
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/dd2;->c:Lcom/shabakaty/downloader/cd2$a;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "parameter #"

    .line 6
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget v2, p0, Lcom/shabakaty/downloader/dd2;->b:I

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/dd2;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "extension receiver parameter"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "instance parameter"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, " of "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/dd2;->a:Lcom/shabakaty/downloader/ac2;

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ac2;->e()Lcom/shabakaty/downloader/tq;

    move-result-object v1

    .line 14
    instance-of v2, v1, Lcom/shabakaty/downloader/yh3;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/shabakaty/downloader/yh3;

    invoke-static {v1}, Lcom/shabakaty/downloader/hq3;->d(Lcom/shabakaty/downloader/yh3;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 15
    :cond_3
    instance-of v2, v1, Lcom/shabakaty/downloader/xn1;

    if-eqz v2, :cond_4

    check-cast v1, Lcom/shabakaty/downloader/xn1;

    invoke-static {v1}, Lcom/shabakaty/downloader/hq3;->c(Lcom/shabakaty/downloader/xn1;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 18
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Illegal callable: "

    .line 19
    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
