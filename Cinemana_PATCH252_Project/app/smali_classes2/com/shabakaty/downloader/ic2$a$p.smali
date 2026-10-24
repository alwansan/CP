.class public final Lcom/shabakaty/downloader/ic2$a$p;
.super Lcom/shabakaty/downloader/af2;
.source "KClassImpl.kt"

# interfaces
.implements Lcom/shabakaty/downloader/rm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ic2$a;-><init>(Lcom/shabakaty/downloader/ic2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/rm1<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/ic2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/ic2$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ic2;Lcom/shabakaty/downloader/ic2$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>;",
            "Lcom/shabakaty/downloader/ic2<",
            "TT;>.a;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/downloader/ic2$a$p;->r:Lcom/shabakaty/downloader/ic2;

    iput-object p2, p0, Lcom/shabakaty/downloader/ic2$a$p;->s:Lcom/shabakaty/downloader/ic2$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$p;->r:Lcom/shabakaty/downloader/ic2;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$p;->r:Lcom/shabakaty/downloader/ic2;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ic2;->r()Lcom/shabakaty/downloader/v20;

    move-result-object v0

    .line 6
    iget-boolean v2, v0, Lcom/shabakaty/downloader/v20;->c:Z

    if-eqz v2, :cond_4

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ic2$a$p;->s:Lcom/shabakaty/downloader/ic2$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/ic2$a$p;->r:Lcom/shabakaty/downloader/ic2;

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/ic2;->t:Ljava/lang/Class;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "$"

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {v2}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v1, 0x24

    const-string v2, "<this>"

    .line 13
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "missingDelimiterValue"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x6

    .line 14
    invoke-static {v0, v1, v2, v2, v3}, Lcom/shabakaty/downloader/re4;->S(Ljava/lang/CharSequence;CIZI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 15
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v4}, Lcom/shabakaty/downloader/re4;->h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v4}, Lcom/shabakaty/downloader/re4;->h0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/v20;->j()Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hw2;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "classId.shortClassName.asString()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method
