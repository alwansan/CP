.class public final enum Lcom/shabakaty/downloader/d24;
.super Ljava/lang/Enum;
.source "SessionVerbosity.java"

# interfaces
.implements Lcom/shabakaty/downloader/x22$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/d24$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/d24;",
        ">;",
        "Lcom/shabakaty/downloader/x22$a;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/d24;

.field public static final enum t:Lcom/shabakaty/downloader/d24;

.field public static final synthetic u:[Lcom/shabakaty/downloader/d24;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/d24;

    const-string v1, "SESSION_VERBOSITY_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/d24;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/d24;->s:Lcom/shabakaty/downloader/d24;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/d24;

    const-string v3, "GAUGES_AND_SYSTEM_EVENTS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/d24;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/d24;->t:Lcom/shabakaty/downloader/d24;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/d24;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/shabakaty/downloader/d24;->u:[Lcom/shabakaty/downloader/d24;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/d24;->r:I

    return-void
.end method

.method public static f(I)Lcom/shabakaty/downloader/d24;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/d24;->t:Lcom/shabakaty/downloader/d24;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/shabakaty/downloader/d24;->s:Lcom/shabakaty/downloader/d24;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/d24;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/d24;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/d24;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/d24;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/d24;->u:[Lcom/shabakaty/downloader/d24;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/d24;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/d24;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/d24;->r:I

    return v0
.end method
