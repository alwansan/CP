.class public abstract enum Lcom/shabakaty/downloader/il2;
.super Ljava/lang/Enum;
.source "LongSerializationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/il2;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/il2;

.field public static final synthetic s:[Lcom/shabakaty/downloader/il2;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/il2$a;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/il2$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/il2;->r:Lcom/shabakaty/downloader/il2;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/il2$b;

    const-string v3, "STRING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/il2$b;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/il2;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/shabakaty/downloader/il2;->s:[Lcom/shabakaty/downloader/il2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/shabakaty/downloader/il2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/il2;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/il2;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/il2;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/il2;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/il2;->s:[Lcom/shabakaty/downloader/il2;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/il2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/il2;

    return-object v0
.end method
