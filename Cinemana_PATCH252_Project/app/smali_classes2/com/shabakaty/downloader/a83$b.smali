.class public final Lcom/shabakaty/downloader/a83$b;
.super Lcom/shabakaty/downloader/af2;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a83;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/xn1;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/a83$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/a83$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a83$b;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a83$b;->r:Lcom/shabakaty/downloader/a83$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method

.method public static final a(Lcom/shabakaty/downloader/qm0;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/shabakaty/downloader/q20;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/shabakaty/downloader/q20;

    sget-object v0, Lcom/shabakaty/downloader/zd2;->e:Lcom/shabakaty/downloader/hw2;

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/tb4$a;->b:Lcom/shabakaty/downloader/gi1;

    invoke-static {p0, v0}, Lcom/shabakaty/downloader/zd2;->c(Lcom/shabakaty/downloader/g30;Lcom/shabakaty/downloader/gi1;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xn1;

    const-string v0, "$this$$receiver"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/shabakaty/downloader/a83;->a:Lcom/shabakaty/downloader/a83;

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v1, "containingDeclaration"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/a83$b;->a(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/shabakaty/downloader/xn1;->f()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/xn1;

    .line 6
    invoke-interface {v0}, Lcom/shabakaty/downloader/xn1;->c()Lcom/shabakaty/downloader/qm0;

    move-result-object v0

    const-string v3, "it.containingDeclaration"

    invoke-static {v0, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/a83$b;->a(Lcom/shabakaty/downloader/qm0;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    const-string p1, "must override \'\'equals()\'\' in Any"

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
