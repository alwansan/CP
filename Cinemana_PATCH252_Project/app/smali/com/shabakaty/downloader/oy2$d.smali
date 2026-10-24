.class public final enum Lcom/shabakaty/downloader/oy2$d;
.super Ljava/lang/Enum;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/shabakaty/downloader/x22$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/oy2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/oy2$d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/oy2$d;",
        ">;",
        "Lcom/shabakaty/downloader/x22$a;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum B:Lcom/shabakaty/downloader/oy2$d;

.field public static final synthetic C:[Lcom/shabakaty/downloader/oy2$d;

.field public static final enum s:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum t:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum u:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum v:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum w:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum x:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum y:Lcom/shabakaty/downloader/oy2$d;

.field public static final enum z:Lcom/shabakaty/downloader/oy2$d;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/oy2$d;

    const-string v1, "HTTP_METHOD_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/shabakaty/downloader/oy2$d;->s:Lcom/shabakaty/downloader/oy2$d;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/oy2$d;

    const-string v3, "GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/shabakaty/downloader/oy2$d;->t:Lcom/shabakaty/downloader/oy2$d;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/oy2$d;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/shabakaty/downloader/oy2$d;->u:Lcom/shabakaty/downloader/oy2$d;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/oy2$d;

    const-string v7, "POST"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/shabakaty/downloader/oy2$d;->v:Lcom/shabakaty/downloader/oy2$d;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/oy2$d;

    const-string v9, "DELETE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/shabakaty/downloader/oy2$d;->w:Lcom/shabakaty/downloader/oy2$d;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/oy2$d;

    const-string v11, "HEAD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/shabakaty/downloader/oy2$d;->x:Lcom/shabakaty/downloader/oy2$d;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/oy2$d;

    const-string v13, "PATCH"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/shabakaty/downloader/oy2$d;->y:Lcom/shabakaty/downloader/oy2$d;

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/oy2$d;

    const-string v15, "OPTIONS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/shabakaty/downloader/oy2$d;->z:Lcom/shabakaty/downloader/oy2$d;

    .line 9
    new-instance v15, Lcom/shabakaty/downloader/oy2$d;

    const-string v14, "TRACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/shabakaty/downloader/oy2$d;->A:Lcom/shabakaty/downloader/oy2$d;

    .line 10
    new-instance v14, Lcom/shabakaty/downloader/oy2$d;

    const-string v12, "CONNECT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/shabakaty/downloader/oy2$d;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/shabakaty/downloader/oy2$d;->B:Lcom/shabakaty/downloader/oy2$d;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/shabakaty/downloader/oy2$d;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 11
    sput-object v12, Lcom/shabakaty/downloader/oy2$d;->C:[Lcom/shabakaty/downloader/oy2$d;

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
    iput p3, p0, Lcom/shabakaty/downloader/oy2$d;->r:I

    return-void
.end method

.method public static f(I)Lcom/shabakaty/downloader/oy2$d;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->B:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->A:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->z:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->y:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->x:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->w:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->v:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->u:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->t:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/shabakaty/downloader/oy2$d;->s:Lcom/shabakaty/downloader/oy2$d;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/oy2$d;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/oy2$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/oy2$d;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/oy2$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/oy2$d;->C:[Lcom/shabakaty/downloader/oy2$d;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/oy2$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/oy2$d;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oy2$d;->r:I

    return v0
.end method
