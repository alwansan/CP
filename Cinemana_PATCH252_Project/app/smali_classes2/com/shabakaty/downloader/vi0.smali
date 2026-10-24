.class public final enum Lcom/shabakaty/downloader/vi0;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shabakaty/downloader/vi0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/shabakaty/downloader/vi0;

.field public static final enum B:Lcom/shabakaty/downloader/vi0;

.field public static final enum C:Lcom/shabakaty/downloader/vi0;

.field public static final enum D:Lcom/shabakaty/downloader/vi0;

.field public static final enum E:Lcom/shabakaty/downloader/vi0;

.field public static final synthetic F:[Lcom/shabakaty/downloader/vi0;

.field public static final enum t:Lcom/shabakaty/downloader/vi0;

.field public static final enum u:Lcom/shabakaty/downloader/vi0;

.field public static final enum v:Lcom/shabakaty/downloader/vi0;

.field public static final enum w:Lcom/shabakaty/downloader/vi0;

.field public static final enum x:Lcom/shabakaty/downloader/vi0;

.field public static final enum y:Lcom/shabakaty/downloader/vi0;

.field public static final enum z:Lcom/shabakaty/downloader/vi0;


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vi0;

    const-string v1, "PROBING_1"

    const/4 v2, 0x0

    const-string v3, "probing 1"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/shabakaty/downloader/vi0;->t:Lcom/shabakaty/downloader/vi0;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/vi0;

    const-string v3, "PROBING_2"

    const-string v5, "probing 2"

    invoke-direct {v1, v3, v4, v5, v4}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v1, Lcom/shabakaty/downloader/vi0;->u:Lcom/shabakaty/downloader/vi0;

    .line 3
    new-instance v3, Lcom/shabakaty/downloader/vi0;

    const-string v5, "PROBING_3"

    const/4 v6, 0x2

    const-string v7, "probing 3"

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v3, Lcom/shabakaty/downloader/vi0;->v:Lcom/shabakaty/downloader/vi0;

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/vi0;

    const-string v7, "ANNOUNCING_1"

    const/4 v8, 0x3

    const-string v9, "announcing 1"

    invoke-direct {v5, v7, v8, v9, v6}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v5, Lcom/shabakaty/downloader/vi0;->w:Lcom/shabakaty/downloader/vi0;

    .line 5
    new-instance v7, Lcom/shabakaty/downloader/vi0;

    const-string v9, "ANNOUNCING_2"

    const/4 v10, 0x4

    const-string v11, "announcing 2"

    invoke-direct {v7, v9, v10, v11, v6}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v7, Lcom/shabakaty/downloader/vi0;->x:Lcom/shabakaty/downloader/vi0;

    .line 6
    new-instance v9, Lcom/shabakaty/downloader/vi0;

    const-string v11, "ANNOUNCED"

    const/4 v12, 0x5

    const-string v13, "announced"

    invoke-direct {v9, v11, v12, v13, v8}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v9, Lcom/shabakaty/downloader/vi0;->y:Lcom/shabakaty/downloader/vi0;

    .line 7
    new-instance v11, Lcom/shabakaty/downloader/vi0;

    const-string v13, "CANCELING_1"

    const/4 v14, 0x6

    const-string v15, "canceling 1"

    invoke-direct {v11, v13, v14, v15, v10}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v11, Lcom/shabakaty/downloader/vi0;->z:Lcom/shabakaty/downloader/vi0;

    .line 8
    new-instance v13, Lcom/shabakaty/downloader/vi0;

    const-string v15, "CANCELING_2"

    const/4 v8, 0x7

    const-string v6, "canceling 2"

    invoke-direct {v13, v15, v8, v6, v10}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v13, Lcom/shabakaty/downloader/vi0;->A:Lcom/shabakaty/downloader/vi0;

    .line 9
    new-instance v6, Lcom/shabakaty/downloader/vi0;

    const-string v15, "CANCELING_3"

    const/16 v4, 0x8

    const-string v2, "canceling 3"

    invoke-direct {v6, v15, v4, v2, v10}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v6, Lcom/shabakaty/downloader/vi0;->B:Lcom/shabakaty/downloader/vi0;

    .line 10
    new-instance v2, Lcom/shabakaty/downloader/vi0;

    const-string v15, "CANCELED"

    const/16 v4, 0x9

    const-string v10, "canceled"

    invoke-direct {v2, v15, v4, v10, v12}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v2, Lcom/shabakaty/downloader/vi0;->C:Lcom/shabakaty/downloader/vi0;

    .line 11
    new-instance v10, Lcom/shabakaty/downloader/vi0;

    const-string v15, "CLOSING"

    const/16 v4, 0xa

    const-string v12, "closing"

    invoke-direct {v10, v15, v4, v12, v14}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v10, Lcom/shabakaty/downloader/vi0;->D:Lcom/shabakaty/downloader/vi0;

    .line 12
    new-instance v12, Lcom/shabakaty/downloader/vi0;

    const-string v15, "CLOSED"

    const/16 v4, 0xb

    const-string v14, "closed"

    invoke-direct {v12, v15, v4, v14, v8}, Lcom/shabakaty/downloader/vi0;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v12, Lcom/shabakaty/downloader/vi0;->E:Lcom/shabakaty/downloader/vi0;

    const/16 v14, 0xc

    new-array v14, v14, [Lcom/shabakaty/downloader/vi0;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v3, v14, v0

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v7, v14, v0

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    aput-object v13, v14, v8

    const/16 v0, 0x8

    aput-object v6, v14, v0

    const/16 v0, 0x9

    aput-object v2, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    aput-object v12, v14, v4

    .line 13
    sput-object v14, Lcom/shabakaty/downloader/vi0;->F:[Lcom/shabakaty/downloader/vi0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/vi0;->r:Ljava/lang/String;

    .line 3
    iput p4, p0, Lcom/shabakaty/downloader/vi0;->s:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/shabakaty/downloader/vi0;
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/vi0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/downloader/vi0;

    return-object p0
.end method

.method public static values()[Lcom/shabakaty/downloader/vi0;
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vi0;->F:[Lcom/shabakaty/downloader/vi0;

    invoke-virtual {v0}, [Lcom/shabakaty/downloader/vi0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/vi0;

    return-object v0
.end method


# virtual methods
.method public final f()Lcom/shabakaty/downloader/vi0;
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/vi0;->E:Lcom/shabakaty/downloader/vi0;

    sget-object v1, Lcom/shabakaty/downloader/vi0;->C:Lcom/shabakaty/downloader/vi0;

    sget-object v2, Lcom/shabakaty/downloader/vi0;->y:Lcom/shabakaty/downloader/vi0;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return-object p0

    :pswitch_0
    return-object v0

    :pswitch_1
    return-object v1

    .line 2
    :pswitch_2
    sget-object v0, Lcom/shabakaty/downloader/vi0;->B:Lcom/shabakaty/downloader/vi0;

    return-object v0

    .line 3
    :pswitch_3
    sget-object v0, Lcom/shabakaty/downloader/vi0;->A:Lcom/shabakaty/downloader/vi0;

    return-object v0

    :pswitch_4
    return-object v2

    .line 4
    :pswitch_5
    sget-object v0, Lcom/shabakaty/downloader/vi0;->x:Lcom/shabakaty/downloader/vi0;

    return-object v0

    .line 5
    :pswitch_6
    sget-object v0, Lcom/shabakaty/downloader/vi0;->w:Lcom/shabakaty/downloader/vi0;

    return-object v0

    .line 6
    :pswitch_7
    sget-object v0, Lcom/shabakaty/downloader/vi0;->v:Lcom/shabakaty/downloader/vi0;

    return-object v0

    .line 7
    :pswitch_8
    sget-object v0, Lcom/shabakaty/downloader/vi0;->u:Lcom/shabakaty/downloader/vi0;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/vi0;->s:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/vi0;->r:Ljava/lang/String;

    return-object v0
.end method
