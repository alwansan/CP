.class public abstract Lcom/shabakaty/downloader/fr;
.super Ljava/lang/Object;
.source "CallerImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/er;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/fr$d;,
        Lcom/shabakaty/downloader/fr$c;,
        Lcom/shabakaty/downloader/fr$b;,
        Lcom/shabakaty/downloader/fr$a;,
        Lcom/shabakaty/downloader/fr$g;,
        Lcom/shabakaty/downloader/fr$e;,
        Lcom/shabakaty/downloader/fr$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/er<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/reflect/Type;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/fr;->a:Ljava/lang/reflect/Member;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/fr;->b:Ljava/lang/reflect/Type;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/fr;->c:Ljava/lang/Class;

    if-nez p3, :cond_0

    .line 5
    invoke-static {p4}, Lcom/shabakaty/downloader/id;->c0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/yo;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/yo;-><init>(I)V

    .line 6
    iget-object p2, p1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p1, p4}, Lcom/shabakaty/downloader/yo;->j(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/shabakaty/downloader/yo;->u()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Type;

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/yo;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/shabakaty/downloader/iq6;->p([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/fr;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fr;->d:Ljava/util/List;

    return-object v0
.end method

.method public final c()Ljava/lang/reflect/Member;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fr;->a:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public d([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/er$a;->a(Lcom/shabakaty/downloader/er;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fr;->a:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "An object member requires the object instance passed as the first argument."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fr;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method
