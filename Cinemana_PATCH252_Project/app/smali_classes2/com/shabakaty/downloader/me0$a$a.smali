.class public final Lcom/shabakaty/downloader/me0$a$a;
.super Lcom/shabakaty/downloader/af2;
.source "CoroutineContext.kt"

# interfaces
.implements Lcom/shabakaty/downloader/hn1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/me0$a;->a(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/hn1<",
        "Lcom/shabakaty/downloader/me0;",
        "Lcom/shabakaty/downloader/me0$b;",
        "Lcom/shabakaty/downloader/me0;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/me0$a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/me0$a$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/me0$a$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/me0$a$a;->r:Lcom/shabakaty/downloader/me0$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/me0;

    check-cast p2, Lcom/shabakaty/downloader/me0$b;

    const-string v0, "acc"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p2}, Lcom/shabakaty/downloader/me0$b;->getKey()Lcom/shabakaty/downloader/me0$c;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/me0;->minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/s21;->r:Lcom/shabakaty/downloader/s21;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget v1, Lcom/shabakaty/downloader/yd0;->e:I

    sget-object v1, Lcom/shabakaty/downloader/yd0$a;->r:Lcom/shabakaty/downloader/yd0$a;

    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/me0;->get(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0$b;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yd0;

    if-nez v2, :cond_1

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/i60;

    invoke-direct {v0, p1, p2}, Lcom/shabakaty/downloader/i60;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {p1, v1}, Lcom/shabakaty/downloader/me0;->minusKey(Lcom/shabakaty/downloader/me0$c;)Lcom/shabakaty/downloader/me0;

    move-result-object p1

    if-ne p1, v0, :cond_2

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/i60;

    invoke-direct {p1, p2, v2}, Lcom/shabakaty/downloader/i60;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0$b;)V

    move-object p2, p1

    goto :goto_1

    .line 9
    :cond_2
    new-instance v0, Lcom/shabakaty/downloader/i60;

    new-instance v1, Lcom/shabakaty/downloader/i60;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/i60;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0$b;)V

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/i60;-><init>(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/me0$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method
