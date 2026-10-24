.class public final Lcom/shabakaty/downloader/p20$a;
.super Lcom/shabakaty/downloader/af2;
.source "DeclaredMemberIndex.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/p20;-><init>(Lcom/shabakaty/downloader/q62;Lcom/shabakaty/downloader/tm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/l72;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/p20;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/p20;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/p20$a;->r:Lcom/shabakaty/downloader/p20;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/l72;

    const-string v0, "m"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/p20$a;->r:Lcom/shabakaty/downloader/p20;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/p20;->b:Lcom/shabakaty/downloader/tm1;

    .line 5
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tm1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const-string v0, "<this>"

    .line 6
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/k72;->V()Lcom/shabakaty/downloader/q62;

    move-result-object v0

    invoke-interface {v0}, Lcom/shabakaty/downloader/q62;->M()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/p72;->getName()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x69e9ad94

    if-eq v3, v4, :cond_6

    const v4, -0x4d378041

    if-eq v3, v4, :cond_1

    const v4, 0x8cdac1b

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "hashCode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_1
    const-string v3, "equals"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 9
    :cond_2
    invoke-interface {p1}, Lcom/shabakaty/downloader/l72;->i()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->s0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/t82;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lcom/shabakaty/downloader/t82;->b()Lcom/shabakaty/downloader/g82;

    move-result-object p1

    :goto_0
    instance-of v3, p1, Lcom/shabakaty/downloader/y62;

    if-eqz v3, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/y62;

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    invoke-interface {v0}, Lcom/shabakaty/downloader/y62;->d()Lcom/shabakaty/downloader/x62;

    move-result-object p1

    .line 12
    instance-of v0, p1, Lcom/shabakaty/downloader/q62;

    if-eqz v0, :cond_7

    .line 13
    check-cast p1, Lcom/shabakaty/downloader/q62;

    invoke-interface {p1}, Lcom/shabakaty/downloader/q62;->e()Lcom/shabakaty/downloader/fi1;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/fi1;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.Object"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const-string v3, "toString"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 16
    :cond_8
    invoke-interface {p1}, Lcom/shabakaty/downloader/l72;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    :goto_2
    if-eqz p1, :cond_9

    const/4 p1, 0x1

    goto :goto_3

    :cond_9
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_a

    const/4 v1, 0x1

    .line 17
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
