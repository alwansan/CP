.class public final enum Lcom/shabakaty/downloader/oc;
.super Ljava/lang/Enum;
.source "ApplicationProcessState.java"

# interfaces
.implements Lcom/shabakaty/downloader/x22$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/oc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/oc;",
        ">;",
        "Lcom/shabakaty/downloader/x22$a;"
    }
.end annotation


# static fields
.field public static final enum s:Lcom/shabakaty/downloader/oc;

.field public static final enum t:Lcom/shabakaty/downloader/oc;

.field public static final enum u:Lcom/shabakaty/downloader/oc;

.field public static final enum v:Lcom/shabakaty/downloader/oc;

.field public static final synthetic w:[Lcom/shabakaty/downloader/oc;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oc;

    const-string v1, "APPLICATION_PROCESS_STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/oc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/oc;->s:Lcom/shabakaty/downloader/oc;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/oc;

    const-string v3, "FOREGROUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/oc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/oc;->t:Lcom/shabakaty/downloader/oc;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/oc;

    const-string v5, "BACKGROUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/oc;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/oc;->u:Lcom/shabakaty/downloader/oc;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/oc;

    const-string v7, "FOREGROUND_BACKGROUND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/oc;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/oc;->v:Lcom/shabakaty/downloader/oc;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/shabakaty/downloader/oc;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/shabakaty/downloader/oc;->w:[Lcom/shabakaty/downloader/oc;

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
    iput p3, p0, Lcom/shabakaty/downloader/oc;->r:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/oc;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/oc;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/oc;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/oc;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oc;->w:[Lcom/shabakaty/downloader/oc;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/oc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/oc;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oc;->r:I

    return v0
.end method
