.class public final Lcom/shabakaty/downloader/de2;
.super Ljava/lang/Object;
.source "KotlinExtensions.kt"

# interfaces
.implements Lcom/shabakaty/downloader/xq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/xq<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/fv;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/de2;->a:Lcom/shabakaty/downloader/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/nq;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/de2;->a:Lcom/shabakaty/downloader/fv;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/nq;Lcom/shabakaty/downloader/xs3;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/nq<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/shabakaty/downloader/xs3<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/shabakaty/downloader/xs3;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object p2, p2, Lcom/shabakaty/downloader/xs3;->b:Ljava/lang/Object;

    if-nez p2, :cond_1

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/nq;->d()Lcom/shabakaty/downloader/vr3;

    move-result-object p1

    const-class p2, Lcom/shabakaty/downloader/w32;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    .line 4
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/vr3;->f:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "call.request().tag(Invocation::class.java)!!"

    .line 6
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/shabakaty/downloader/w32;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/w32;->a:Ljava/lang/reflect/Method;

    .line 8
    new-instance p2, Lcom/shabakaty/downloader/le2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "method"

    .line 9
    invoke-static {p1, v1}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "method.declaringClass"

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/j32;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null but response body type was declared as non-null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/le2;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/de2;->a:Lcom/shabakaty/downloader/fv;

    invoke-static {p2}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/j32;->k()V

    const/4 p1, 0x0

    throw p1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/shabakaty/downloader/de2;->a:Lcom/shabakaty/downloader/fv;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/de2;->a:Lcom/shabakaty/downloader/fv;

    new-instance v0, Lcom/shabakaty/downloader/hw1;

    invoke-direct {v0, p2}, Lcom/shabakaty/downloader/hw1;-><init>(Lcom/shabakaty/downloader/xs3;)V

    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/ud0;->i(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
