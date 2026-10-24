.class public final enum Lcom/shabakaty/downloader/yn4;
.super Ljava/lang/Enum;
.source "TlsVersion.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/yn4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/yn4;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/yn4;

.field public static final enum t:Lcom/shabakaty/downloader/yn4;

.field public static final enum u:Lcom/shabakaty/downloader/yn4;

.field public static final enum v:Lcom/shabakaty/downloader/yn4;

.field public static final enum w:Lcom/shabakaty/downloader/yn4;

.field public static final synthetic x:[Lcom/shabakaty/downloader/yn4;

.field public static final y:Lcom/shabakaty/downloader/yn4$a;


# instance fields
.field public final r:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/shabakaty/downloader/yn4;

    new-instance v1, Lcom/shabakaty/downloader/yn4;

    const-string v2, "TLS_1_3"

    const/4 v3, 0x0

    const-string v4, "TLSv1.3"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/yn4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/yn4;->s:Lcom/shabakaty/downloader/yn4;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/yn4;

    const-string v2, "TLS_1_2"

    const/4 v3, 0x1

    const-string v4, "TLSv1.2"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/yn4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/yn4;->t:Lcom/shabakaty/downloader/yn4;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/yn4;

    const-string v2, "TLS_1_1"

    const/4 v3, 0x2

    const-string v4, "TLSv1.1"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/yn4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/yn4;->u:Lcom/shabakaty/downloader/yn4;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/yn4;

    const-string v2, "TLS_1_0"

    const/4 v3, 0x3

    const-string v4, "TLSv1"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/yn4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/yn4;->v:Lcom/shabakaty/downloader/yn4;

    aput-object v1, v0, v3

    new-instance v1, Lcom/shabakaty/downloader/yn4;

    const-string v2, "SSL_3_0"

    const/4 v3, 0x4

    const-string v4, "SSLv3"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/shabakaty/downloader/yn4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/shabakaty/downloader/yn4;->w:Lcom/shabakaty/downloader/yn4;

    aput-object v1, v0, v3

    sput-object v0, Lcom/shabakaty/downloader/yn4;->x:[Lcom/shabakaty/downloader/yn4;

    new-instance v0, Lcom/shabakaty/downloader/yn4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/yn4$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/yn4;->y:Lcom/shabakaty/downloader/yn4$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/shabakaty/downloader/yn4;->r:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/yn4;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/yn4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/yn4;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/yn4;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/yn4;->x:[Lcom/shabakaty/downloader/yn4;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/yn4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/yn4;

    return-object v0
.end method
