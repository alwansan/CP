.class public abstract Lcom/shabakaty/downloader/kd2$c;
.super Lcom/shabakaty/downloader/kd2$a;
.source "KPropertyImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/kd2$a<",
        "TV;",
        "Lcom/shabakaty/downloader/qv4;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic u:[Lcom/shabakaty/downloader/jd2;
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
.field public final s:Lcom/shabakaty/downloader/cq3$a;

.field public final t:Lcom/shabakaty/downloader/cq3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/shabakaty/downloader/kd2$c;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/PropertySetterDescriptor;"

    invoke-direct {v2, v3, v4, v5}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    new-instance v2, Lcom/shabakaty/downloader/di3;

    invoke-static {v0}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    const-string v3, "caller"

    const-string v4, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v2, v0, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/shabakaty/downloader/kd2$c;->u:[Lcom/shabakaty/downloader/jd2;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kd2$a;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/kd2$c$b;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kd2$c$b;-><init>(Lcom/shabakaty/downloader/kd2$c;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/cq3;->c(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/cq3$a;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/kd2$c;->s:Lcom/shabakaty/downloader/cq3$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/kd2$c$a;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/kd2$c$a;-><init>(Lcom/shabakaty/downloader/kd2$c;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/cq3$b;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/cq3$b;-><init>(Lcom/shabakaty/downloader/rm1;)V

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/kd2$c;->t:Lcom/shabakaty/downloader/cq3$b;

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/er;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/er<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2$c;->t:Lcom/shabakaty/downloader/cq3$b;

    sget-object v1, Lcom/shabakaty/downloader/kd2$c;->u:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$b;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-caller>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/er;

    return-object v0
.end method

.method public e()Lcom/shabakaty/downloader/tq;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2$c;->s:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/kd2$c;->u:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-descriptor>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/fi3;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/kd2$c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    check-cast p1, Lcom/shabakaty/downloader/kd2$c;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    const-string v0, "<set-"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/shabakaty/downloader/kd2;->t:Ljava/lang/String;

    const/16 v2, 0x3e

    .line 3
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/h61;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/shabakaty/downloader/vh3;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/kd2$c;->s:Lcom/shabakaty/downloader/cq3$a;

    sget-object v1, Lcom/shabakaty/downloader/kd2$c;->u:[Lcom/shabakaty/downloader/jd2;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cq3$a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-descriptor>(...)"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/fi3;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/kd2;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/kd2$a;->i()Lcom/shabakaty/downloader/kd2;

    move-result-object v0

    const-string v1, "setter of "

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
