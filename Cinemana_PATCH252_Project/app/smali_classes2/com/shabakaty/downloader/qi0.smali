.class public Lcom/shabakaty/downloader/qi0;
.super Lcom/shabakaty/downloader/li0;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/qi0$a;,
        Lcom/shabakaty/downloader/qi0$g;,
        Lcom/shabakaty/downloader/qi0$f;,
        Lcom/shabakaty/downloader/qi0$e;,
        Lcom/shabakaty/downloader/qi0$d;,
        Lcom/shabakaty/downloader/qi0$c;,
        Lcom/shabakaty/downloader/qi0$b;
    }
.end annotation


# static fields
.field public static h:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/qi0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/qi0;->h:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/li0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)Lcom/shabakaty/downloader/qi0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v1, 0x26

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/qi0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/qi0$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$d;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/qi0$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$e;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 5
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/qi0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$a;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 6
    :cond_3
    new-instance v0, Lcom/shabakaty/downloader/qi0$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 7
    :cond_4
    new-instance v0, Lcom/shabakaty/downloader/qi0$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$f;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 8
    :cond_5
    new-instance v0, Lcom/shabakaty/downloader/qi0$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$c;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 9
    :cond_6
    new-instance v0, Lcom/shabakaty/downloader/qi0$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$g;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0

    .line 10
    :cond_7
    new-instance v0, Lcom/shabakaty/downloader/qi0$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/shabakaty/downloader/qi0$b;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/ti0;Lcom/shabakaty/downloader/si0;Z)V

    return-object v0
.end method


# virtual methods
.method public i(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r(Ljava/lang/StringBuilder;)V
    .locals 0

    return-void
.end method

.method public s(Lcom/shabakaty/downloader/d92;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d92;",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/ri0;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public t(Lcom/shabakaty/downloader/d92;Ljava/util/Set;Lcom/shabakaty/downloader/k14;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/d92;",
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/ri0;",
            ">;",
            "Lcom/shabakaty/downloader/k14;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1
    iget-object v0, p3, Lcom/shabakaty/downloader/k14;->I:Lcom/shabakaty/downloader/k14$a;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/xi0$b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/shabakaty/downloader/k14;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/shabakaty/downloader/k14;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/shabakaty/downloader/k14;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xe10

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/jv1;->a(Lcom/shabakaty/downloader/si0;ZI)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->e()Lcom/shabakaty/downloader/si0;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lcom/shabakaty/downloader/d92;->z:Lcom/shabakaty/downloader/jv1;

    .line 7
    invoke-virtual {p3, v0, v2, v3, v1}, Lcom/shabakaty/downloader/k14;->x(Lcom/shabakaty/downloader/si0;ZILcom/shabakaty/downloader/jv1;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_1
    sget-object v0, Lcom/shabakaty/downloader/qi0;->h:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lcom/shabakaty/downloader/qi0;->h:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DNSQuestion("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/li0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ").addAnswersForServiceInfo(): info: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public u(Lcom/shabakaty/downloader/d92;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
