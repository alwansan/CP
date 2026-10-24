.class public final enum Lcom/shabakaty/downloader/zn4$j;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zn4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/zn4$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum r:Lcom/shabakaty/downloader/zn4$j;

.field public static final enum s:Lcom/shabakaty/downloader/zn4$j;

.field public static final enum t:Lcom/shabakaty/downloader/zn4$j;

.field public static final enum u:Lcom/shabakaty/downloader/zn4$j;

.field public static final enum v:Lcom/shabakaty/downloader/zn4$j;

.field public static final enum w:Lcom/shabakaty/downloader/zn4$j;

.field public static final synthetic x:[Lcom/shabakaty/downloader/zn4$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zn4$j;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/zn4$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/zn4$j;->r:Lcom/shabakaty/downloader/zn4$j;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/zn4$j;

    const-string v3, "StartTag"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shabakaty/downloader/zn4$j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/zn4$j;->s:Lcom/shabakaty/downloader/zn4$j;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/zn4$j;

    const-string v5, "EndTag"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shabakaty/downloader/zn4$j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/zn4$j;->t:Lcom/shabakaty/downloader/zn4$j;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/zn4$j;

    const-string v7, "Comment"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shabakaty/downloader/zn4$j;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/zn4$j;->u:Lcom/shabakaty/downloader/zn4$j;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/zn4$j;

    const-string v9, "Character"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shabakaty/downloader/zn4$j;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/zn4$j;->v:Lcom/shabakaty/downloader/zn4$j;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/zn4$j;

    const-string v11, "EOF"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shabakaty/downloader/zn4$j;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/zn4$j;->w:Lcom/shabakaty/downloader/zn4$j;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shabakaty/downloader/zn4$j;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/shabakaty/downloader/zn4$j;->x:[Lcom/shabakaty/downloader/zn4$j;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/zn4$j;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/zn4$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/zn4$j;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/zn4$j;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/zn4$j;->x:[Lcom/shabakaty/downloader/zn4$j;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/zn4$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/zn4$j;

    return-object v0
.end method
