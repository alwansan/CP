.class public final Lcom/shabakaty/downloader/fr$c;
.super Lcom/shabakaty/downloader/fr;
.source "CallerImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/fr<",
        "Ljava/lang/reflect/Constructor<",
        "*>;>;",
        "Lcom/shabakaty/downloader/tn;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-string v0, "constructor.declaringClass"

    invoke-static {v3, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    const-string v0, "constructor.genericParameterTypes"

    invoke-static {v5, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/fr;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/nn0;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/fr$c;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/er$a;->a(Lcom/shabakaty/downloader/er;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fr;->a:Ljava/lang/reflect/Member;

    .line 3
    check-cast v0, Ljava/lang/reflect/Constructor;

    new-instance v1, Lcom/shabakaty/downloader/yo;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/yo;-><init>(I)V

    iget-object v2, p0, Lcom/shabakaty/downloader/fr$c;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/yo;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/yo;->j(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/shabakaty/downloader/yo;->u()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
