.class public abstract Lcom/shabakaty/downloader/fr$f;
.super Lcom/shabakaty/downloader/fr;
.source "CallerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/fr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/fr$f$e;,
        Lcom/shabakaty/downloader/fr$f$c;,
        Lcom/shabakaty/downloader/fr$f$d;,
        Lcom/shabakaty/downloader/fr$f$a;,
        Lcom/shabakaty/downloader/fr$f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/fr<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZZLcom/shabakaty/downloader/nn0;)V
    .locals 6

    .line 1
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string p4, "TYPE"

    invoke-static {v2, p4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    const/4 p3, 0x1

    new-array v4, p3, [Ljava/lang/reflect/Type;

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p4

    const-string v0, "field.genericType"

    invoke-static {p4, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p4, v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/fr;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/nn0;)V

    .line 5
    iput-boolean p2, p0, Lcom/shabakaty/downloader/fr$f;->e:Z

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fr$f;->d([Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/fr;->a:Ljava/lang/reflect/Member;

    .line 3
    check-cast v0, Ljava/lang/reflect/Field;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/fr;->c:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/id;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/id;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1
.end method

.method public d([Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/er$a;->a(Lcom/shabakaty/downloader/er;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/shabakaty/downloader/fr$f;->e:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/id;->X([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null is not allowed as a value for this property."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
