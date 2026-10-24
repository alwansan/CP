.class public final enum Lcom/shabakaty/downloader/e31;
.super Ljava/lang/Enum;
.source "EmptySubscription.java"

# interfaces
.implements Lcom/shabakaty/downloader/yk3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/e31;",
        ">;",
        "Lcom/shabakaty/downloader/yk3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/e31;

.field public static final synthetic s:[Lcom/shabakaty/downloader/e31;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/e31;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/e31;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/shabakaty/downloader/e31;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/shabakaty/downloader/e31;->s:[Lcom/shabakaty/downloader/e31;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static h(Lcom/shabakaty/downloader/ef4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    invoke-interface {p0, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 2
    invoke-interface {p0}, Lcom/shabakaty/downloader/ef4;->a()V

    return-void
.end method

.method public static n(Ljava/lang/Throwable;Lcom/shabakaty/downloader/ef4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/ef4<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->r:Lcom/shabakaty/downloader/e31;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/ef4;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/e31;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/e31;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/e31;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/e31;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/e31;->s:[Lcom/shabakaty/downloader/e31;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/e31;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/e31;

    return-object v0
.end method


# virtual methods
.method public D(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySubscription"

    return-object v0
.end method

.method public u(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/pf4;->E(J)Z

    return-void
.end method
