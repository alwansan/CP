.class public final Lcom/shabakaty/downloader/py3;
.super Ljava/lang/Object;
.source "ScopesHolderForClass.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/py3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/shabakaty/downloader/mr2;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final e:Lcom/shabakaty/downloader/py3$a;

.field public static final synthetic f:[Lcom/shabakaty/downloader/jd2;
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
.field public final a:Lcom/shabakaty/downloader/q20;

.field public final b:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "Lcom/shabakaty/downloader/ve2;",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/ve2;

.field public final d:Lcom/shabakaty/downloader/d03;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/shabakaty/downloader/jd2;

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/di3;

    const-class v2, Lcom/shabakaty/downloader/py3;

    invoke-static {v2}, Lcom/shabakaty/downloader/dq3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/gc2;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/di3;-><init>(Lcom/shabakaty/downloader/nc2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/shabakaty/downloader/dq3;->c(Lcom/shabakaty/downloader/ci3;)Lcom/shabakaty/downloader/fd2;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/shabakaty/downloader/py3;->f:[Lcom/shabakaty/downloader/jd2;

    new-instance v0, Lcom/shabakaty/downloader/py3$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/py3$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/py3;->e:Lcom/shabakaty/downloader/py3$a;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/py3;->a:Lcom/shabakaty/downloader/q20;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/py3;->b:Lcom/shabakaty/downloader/tm1;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/py3;->c:Lcom/shabakaty/downloader/ve2;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/qy3;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/qy3;-><init>(Lcom/shabakaty/downloader/py3;)V

    invoke-interface {p2, p1}, Lcom/shabakaty/downloader/md4;->f(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/d03;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/py3;->d:Lcom/shabakaty/downloader/d03;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ve2;)Lcom/shabakaty/downloader/mr2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ve2;",
            ")TT;"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/py3;->a:Lcom/shabakaty/downloader/q20;

    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->j(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/nu2;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->d(Lcom/shabakaty/downloader/nu2;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/py3;->d:Lcom/shabakaty/downloader/d03;

    sget-object v0, Lcom/shabakaty/downloader/py3;->f:[Lcom/shabakaty/downloader/jd2;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mr2;

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/py3;->a:Lcom/shabakaty/downloader/q20;

    invoke-interface {v0}, Lcom/shabakaty/downloader/g30;->m()Lcom/shabakaty/downloader/ts4;

    move-result-object v0

    const-string v2, "classDescriptor.typeConstructor"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->e(Lcom/shabakaty/downloader/ts4;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/py3;->d:Lcom/shabakaty/downloader/d03;

    sget-object v0, Lcom/shabakaty/downloader/py3;->f:[Lcom/shabakaty/downloader/jd2;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/z02;->i(Lcom/shabakaty/downloader/d03;Lcom/shabakaty/downloader/jd2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mr2;

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/py3;->a:Lcom/shabakaty/downloader/q20;

    new-instance v1, Lcom/shabakaty/downloader/py3$b;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/py3$b;-><init>(Lcom/shabakaty/downloader/py3;Lcom/shabakaty/downloader/ve2;)V

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ve2;->c(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/mr2;

    move-result-object p1

    return-object p1
.end method
