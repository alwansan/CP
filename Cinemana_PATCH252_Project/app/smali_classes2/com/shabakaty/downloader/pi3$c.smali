.class public final enum Lcom/shabakaty/downloader/pi3$c;
.super Ljava/lang/Enum;
.source "ProtoBuf.java"

# interfaces
.implements Lcom/shabakaty/downloader/z22$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/pi3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/pi3$c;",
        ">;",
        "Lcom/shabakaty/downloader/z22$a;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/pi3$c;

.field public static final enum t:Lcom/shabakaty/downloader/pi3$c;

.field public static final enum u:Lcom/shabakaty/downloader/pi3$c;

.field public static final synthetic v:[Lcom/shabakaty/downloader/pi3$c;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pi3$c;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/pi3$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/pi3$c;->s:Lcom/shabakaty/downloader/pi3$c;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/pi3$c;

    const-string v3, "FALSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/pi3$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/pi3$c;->t:Lcom/shabakaty/downloader/pi3$c;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/pi3$c;

    const-string v5, "NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/pi3$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/pi3$c;->u:Lcom/shabakaty/downloader/pi3$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/shabakaty/downloader/pi3$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/shabakaty/downloader/pi3$c;->v:[Lcom/shabakaty/downloader/pi3$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/shabakaty/downloader/pi3$c;->r:I

    return-void
.end method

.method public static f(I)Lcom/shabakaty/downloader/pi3$c;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/pi3$c;->u:Lcom/shabakaty/downloader/pi3$c;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/shabakaty/downloader/pi3$c;->t:Lcom/shabakaty/downloader/pi3$c;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/pi3$c;->s:Lcom/shabakaty/downloader/pi3$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/pi3$c;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/pi3$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/pi3$c;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/pi3$c;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pi3$c;->v:[Lcom/shabakaty/downloader/pi3$c;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/pi3$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/pi3$c;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/pi3$c;->r:I

    return v0
.end method
