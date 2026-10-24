.class public final Lcom/shabakaty/downloader/jc2;
.super Lcom/shabakaty/downloader/af2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/reflect/Type;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/qe2;

.field public final synthetic s:Lcom/shabakaty/downloader/ic2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "Ljava/lang/Object;",
            ">.a;"
        }
    .end annotation
.end field

.field public final synthetic t:Lcom/shabakaty/downloader/ic2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/ic2$a;Lcom/shabakaty/downloader/ic2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qe2;",
            "Lcom/shabakaty/downloader/ic2<",
            "Ljava/lang/Object;",
            ">.a;",
            "Lcom/shabakaty/downloader/ic2<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/jc2;->r:Lcom/shabakaty/downloader/qe2;

    iput-object p2, p0, Lcom/shabakaty/downloader/jc2;->s:Lcom/shabakaty/downloader/ic2$a;

    iput-object p3, p0, Lcom/shabakaty/downloader/jc2;->t:Lcom/shabakaty/downloader/ic2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/jc2;->r:Lcom/shabakaty/downloader/qe2;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qe2;->T0()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/ts4;->d()Lcom/shabakaty/downloader/g30;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    if-eqz v1, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/shabakaty/downloader/q20;

    invoke-static {v1}, Lcom/shabakaty/downloader/ty4;->h(Lcom/shabakaty/downloader/q20;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/jc2;->t:Lcom/shabakaty/downloader/ic2;

    .line 5
    iget-object v2, v2, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/jc2;->t:Lcom/shabakaty/downloader/ic2;

    .line 8
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "{\n                      \u2026ass\n                    }"

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/jc2;->t:Lcom/shabakaty/downloader/ic2;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const-string v3, "jClass.interfaces"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/id;->V([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/shabakaty/downloader/jc2;->t:Lcom/shabakaty/downloader/ic2;

    .line 15
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v1, "{\n                      \u2026ex]\n                    }"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 17
    :cond_1
    new-instance v1, Lcom/shabakaty/downloader/me2;

    const-string v2, "No superclass of "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/jc2;->s:Lcom/shabakaty/downloader/ic2$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in Java reflection for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_2
    new-instance v1, Lcom/shabakaty/downloader/me2;

    const-string v2, "Unsupported superclass of "

    invoke-static {v2}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/shabakaty/downloader/jc2;->s:Lcom/shabakaty/downloader/ic2$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v1

    .line 19
    :cond_3
    new-instance v1, Lcom/shabakaty/downloader/me2;

    const-string v2, "Supertype not a class: "

    invoke-static {v2, v0}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v1
.end method
