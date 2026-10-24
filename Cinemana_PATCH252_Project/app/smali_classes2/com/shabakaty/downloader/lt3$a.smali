.class public Lcom/shabakaty/downloader/lt3$a;
.super Ljava/lang/Object;
.source "Retrofit.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/lt3;->b(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/mc3;

.field public final b:[Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Class;

.field public final synthetic d:Lcom/shabakaty/downloader/lt3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lt3;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/lt3$a;->d:Lcom/shabakaty/downloader/lt3;

    iput-object p2, p0, Lcom/shabakaty/downloader/lt3$a;->c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/mc3;->c:Lcom/shabakaty/downloader/mc3;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/lt3$a;->a:Lcom/shabakaty/downloader/mc3;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/lt3$a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p3, p0, Lcom/shabakaty/downloader/lt3$a;->b:[Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lt3$a;->a:Lcom/shabakaty/downloader/mc3;

    .line 5
    iget-boolean v0, v0, Lcom/shabakaty/downloader/mc3;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/lt3$a;->a:Lcom/shabakaty/downloader/mc3;

    iget-object v1, p0, Lcom/shabakaty/downloader/lt3$a;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/shabakaty/downloader/mc3;->b(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/lt3$a;->d:Lcom/shabakaty/downloader/lt3;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/lt3;->c(Ljava/lang/reflect/Method;)Lcom/shabakaty/downloader/n14;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/n14;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method
