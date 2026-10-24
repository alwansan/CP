.class public final enum Lcom/shabakaty/downloader/t21;
.super Ljava/lang/Enum;
.source "EmptyDisposable.java"

# interfaces
.implements Lcom/shabakaty/downloader/uk3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/t21;",
        ">;",
        "Lcom/shabakaty/downloader/uk3<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/t21;

.field public static final synthetic s:[Lcom/shabakaty/downloader/t21;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/t21;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/t21;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/t21;

    const-string v3, "NEVER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/t21;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/t21;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/shabakaty/downloader/t21;->s:[Lcom/shabakaty/downloader/t21;

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

.method public static E(Ljava/lang/Throwable;Lcom/shabakaty/downloader/y74;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/y74<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static u(Ljava/lang/Throwable;Lcom/shabakaty/downloader/a80;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/a80;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 2
    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/a80;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/t21;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/t21;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/t21;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/t21;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->s:[Lcom/shabakaty/downloader/t21;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/t21;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/t21;

    return-object v0
.end method


# virtual methods
.method public D(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
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

.method public h()V
    .locals 0

    return-void
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

.method public n()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/t21;->r:Lcom/shabakaty/downloader/t21;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
