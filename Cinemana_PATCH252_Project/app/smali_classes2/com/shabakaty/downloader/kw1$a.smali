.class public final enum Lcom/shabakaty/downloader/kw1$a;
.super Ljava/lang/Enum;
.source "HttpLoggingInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/kw1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/kw1$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/kw1$a;

.field public static final enum s:Lcom/shabakaty/downloader/kw1$a;

.field public static final enum t:Lcom/shabakaty/downloader/kw1$a;

.field public static final enum u:Lcom/shabakaty/downloader/kw1$a;

.field public static final synthetic v:[Lcom/shabakaty/downloader/kw1$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/shabakaty/downloader/kw1$a;

    new-instance v1, Lcom/shabakaty/downloader/kw1$a;

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/kw1$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/kw1$a;->r:Lcom/shabakaty/downloader/kw1$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/kw1$a;

    const-string v2, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/kw1$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/kw1$a;->s:Lcom/shabakaty/downloader/kw1$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/kw1$a;

    const-string v2, "HEADERS"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/kw1$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/kw1$a;->t:Lcom/shabakaty/downloader/kw1$a;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/kw1$a;

    const-string v2, "BODY"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/kw1$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/kw1$a;->u:Lcom/shabakaty/downloader/kw1$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/downloader/kw1$a;->v:[Lcom/shabakaty/downloader/kw1$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/kw1$a;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/kw1$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/kw1$a;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/kw1$a;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/kw1$a;->v:[Lcom/shabakaty/downloader/kw1$a;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/kw1$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/kw1$a;

    return-object v0
.end method
