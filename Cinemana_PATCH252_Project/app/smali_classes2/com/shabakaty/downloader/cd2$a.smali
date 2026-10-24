.class public final enum Lcom/shabakaty/downloader/cd2$a;
.super Ljava/lang/Enum;
.source "KParameter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/cd2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/cd2$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/cd2$a;

.field public static final enum s:Lcom/shabakaty/downloader/cd2$a;

.field public static final enum t:Lcom/shabakaty/downloader/cd2$a;

.field public static final synthetic u:[Lcom/shabakaty/downloader/cd2$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/cd2$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/cd2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/cd2$a;->r:Lcom/shabakaty/downloader/cd2$a;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/cd2$a;

    const-string v1, "EXTENSION_RECEIVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/cd2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/cd2$a;->s:Lcom/shabakaty/downloader/cd2$a;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/cd2$a;

    const-string v1, "VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/cd2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/cd2$a;->t:Lcom/shabakaty/downloader/cd2$a;

    invoke-static {}, Lcom/shabakaty/downloader/cd2$a;->f()[Lcom/shabakaty/downloader/cd2$a;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/cd2$a;->u:[Lcom/shabakaty/downloader/cd2$a;

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

.method public static final synthetic f()[Lcom/shabakaty/downloader/cd2$a;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shabakaty/downloader/cd2$a;

    sget-object v1, Lcom/shabakaty/downloader/cd2$a;->r:Lcom/shabakaty/downloader/cd2$a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/downloader/cd2$a;->s:Lcom/shabakaty/downloader/cd2$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/shabakaty/downloader/cd2$a;->t:Lcom/shabakaty/downloader/cd2$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/cd2$a;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/cd2$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/cd2$a;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/cd2$a;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/cd2$a;->u:[Lcom/shabakaty/downloader/cd2$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/cd2$a;

    return-object v0
.end method
