.class public final Lcom/shabakaty/downloader/mz;
.super Ljava/lang/Object;
.source "modifierChecks.kt"


# instance fields
.field public final a:Lcom/shabakaty/downloader/hw2;

.field public final b:Lcom/shabakaty/downloader/mq3;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/xn1;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Lcom/shabakaty/downloader/jz;


# direct methods
.method public varargs constructor <init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/mq3;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;[Lcom/shabakaty/downloader/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "Lcom/shabakaty/downloader/mq3;",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/xn1;",
            "Ljava/lang/String;",
            ">;[",
            "Lkotlin/reflect/jvm/internal/impl/util/Check;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/mz;->a:Lcom/shabakaty/downloader/hw2;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/mz;->b:Lcom/shabakaty/downloader/mq3;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/mz;->c:Ljava/util/Collection;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/mz;->d:Lcom/shabakaty/downloader/tm1;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/mz;->e:[Lcom/shabakaty/downloader/jz;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            "[",
            "Lkotlin/reflect/jvm/internal/impl/util/Check;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/xn1;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/shabakaty/downloader/jz;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/mz;->a:Lcom/shabakaty/downloader/hw2;

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/mz;->b:Lcom/shabakaty/downloader/mq3;

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/mz;->c:Ljava/util/Collection;

    .line 13
    iput-object p3, p0, Lcom/shabakaty/downloader/mz;->d:Lcom/shabakaty/downloader/tm1;

    .line 14
    iput-object p2, p0, Lcom/shabakaty/downloader/mz;->e:[Lcom/shabakaty/downloader/jz;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    .line 7
    sget-object p3, Lcom/shabakaty/downloader/mz$a;->r:Lcom/shabakaty/downloader/mz$a;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/hw2;",
            ">;[",
            "Lkotlin/reflect/jvm/internal/impl/util/Check;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/xn1;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nameList"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Lcom/shabakaty/downloader/jz;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/mz;-><init>(Lcom/shabakaty/downloader/hw2;Lcom/shabakaty/downloader/mq3;Ljava/util/Collection;Lcom/shabakaty/downloader/tm1;[Lcom/shabakaty/downloader/jz;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    .line 15
    sget-object p3, Lcom/shabakaty/downloader/mz$b;->r:Lcom/shabakaty/downloader/mz$b;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/shabakaty/downloader/mz;-><init>(Ljava/util/Collection;[Lcom/shabakaty/downloader/jz;Lcom/shabakaty/downloader/tm1;)V

    return-void
.end method
