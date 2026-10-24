.class public final enum Lcom/shabakaty/downloader/o8$b;
.super Ljava/lang/Enum;
.source "AnnotationConstructorCaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/o8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/o8$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/o8$b;

.field public static final enum s:Lcom/shabakaty/downloader/o8$b;

.field public static final synthetic t:[Lcom/shabakaty/downloader/o8$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/o8$b;

    const-string v1, "JAVA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/o8$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/o8$b;->r:Lcom/shabakaty/downloader/o8$b;

    new-instance v1, Lcom/shabakaty/downloader/o8$b;

    const-string v3, "KOTLIN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/o8$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/o8$b;->s:Lcom/shabakaty/downloader/o8$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/shabakaty/downloader/o8$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/shabakaty/downloader/o8$b;->t:[Lcom/shabakaty/downloader/o8$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/o8$b;
    .locals 1

    const-class v0, Lcom/shabakaty/downloader/o8$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/o8$b;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/o8$b;
    .locals 1

    sget-object v0, Lcom/shabakaty/downloader/o8$b;->t:[Lcom/shabakaty/downloader/o8$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/o8$b;

    return-object v0
.end method
