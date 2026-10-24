.class public final enum Lcom/facebook/internal/FeatureManager$Feature;
.super Ljava/lang/Enum;
.source "FeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/internal/FeatureManager$Feature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum B:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum C:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum D:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum E:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum F:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum G:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum H:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum I:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum J:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum K:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final synthetic L:[Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum s:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum t:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum u:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum v:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum w:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum x:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum y:Lcom/facebook/internal/FeatureManager$Feature;

.field public static final enum z:Lcom/facebook/internal/FeatureManager$Feature;


# instance fields
.field public final r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/internal/FeatureManager$Feature;->s:Lcom/facebook/internal/FeatureManager$Feature;

    .line 2
    new-instance v1, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v3, "Core"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/facebook/internal/FeatureManager$Feature;->t:Lcom/facebook/internal/FeatureManager$Feature;

    .line 3
    new-instance v3, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v5, "AppEvents"

    const/4 v6, 0x2

    const/high16 v7, 0x10000

    invoke-direct {v3, v5, v6, v7}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/facebook/internal/FeatureManager$Feature;->u:Lcom/facebook/internal/FeatureManager$Feature;

    .line 4
    new-instance v5, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v7, "CodelessEvents"

    const/4 v8, 0x3

    const v9, 0x10100

    invoke-direct {v5, v7, v8, v9}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/facebook/internal/FeatureManager$Feature;->v:Lcom/facebook/internal/FeatureManager$Feature;

    .line 5
    new-instance v7, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v9, "RestrictiveDataFiltering"

    const/4 v10, 0x4

    const v11, 0x10200

    invoke-direct {v7, v9, v10, v11}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/facebook/internal/FeatureManager$Feature;->w:Lcom/facebook/internal/FeatureManager$Feature;

    .line 6
    new-instance v9, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v11, "AAM"

    const/4 v12, 0x5

    const v13, 0x10300

    invoke-direct {v9, v11, v12, v13}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/facebook/internal/FeatureManager$Feature;->x:Lcom/facebook/internal/FeatureManager$Feature;

    .line 7
    new-instance v11, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v13, "PrivacyProtection"

    const/4 v14, 0x6

    const v15, 0x10400

    invoke-direct {v11, v13, v14, v15}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/facebook/internal/FeatureManager$Feature;->y:Lcom/facebook/internal/FeatureManager$Feature;

    .line 8
    new-instance v13, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "SuggestedEvents"

    const/4 v14, 0x7

    const v12, 0x10401

    invoke-direct {v13, v15, v14, v12}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/facebook/internal/FeatureManager$Feature;->z:Lcom/facebook/internal/FeatureManager$Feature;

    .line 9
    new-instance v12, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "IntelligentIntegrity"

    const/16 v14, 0x8

    const v10, 0x10402

    invoke-direct {v12, v15, v14, v10}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/facebook/internal/FeatureManager$Feature;->A:Lcom/facebook/internal/FeatureManager$Feature;

    .line 10
    new-instance v10, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ModelRequest"

    const/16 v14, 0x9

    const v8, 0x10403

    invoke-direct {v10, v15, v14, v8}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/facebook/internal/FeatureManager$Feature;->B:Lcom/facebook/internal/FeatureManager$Feature;

    .line 11
    new-instance v8, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "EventDeactivation"

    const/16 v14, 0xa

    const v6, 0x10500

    invoke-direct {v8, v15, v14, v6}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/facebook/internal/FeatureManager$Feature;->C:Lcom/facebook/internal/FeatureManager$Feature;

    .line 12
    new-instance v6, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Instrument"

    const/16 v14, 0xb

    const/high16 v4, 0x20000

    invoke-direct {v6, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/facebook/internal/FeatureManager$Feature;->D:Lcom/facebook/internal/FeatureManager$Feature;

    .line 13
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "CrashReport"

    const/16 v14, 0xc

    const v2, 0x20100

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->E:Lcom/facebook/internal/FeatureManager$Feature;

    .line 14
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "CrashShield"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const v4, 0x20101

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->F:Lcom/facebook/internal/FeatureManager$Feature;

    .line 15
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ThreadCheck"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const v2, 0x20102

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->G:Lcom/facebook/internal/FeatureManager$Feature;

    .line 16
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ErrorReport"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const v4, 0x20200

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->H:Lcom/facebook/internal/FeatureManager$Feature;

    .line 17
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Monitoring"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/high16 v2, 0x30000

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->I:Lcom/facebook/internal/FeatureManager$Feature;

    .line 18
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Login"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/high16 v4, 0x1000000

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    .line 19
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "ChromeCustomTabsPrefetching"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/high16 v2, 0x1010000

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->J:Lcom/facebook/internal/FeatureManager$Feature;

    .line 20
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "IgnoreAppSwitchToLoggedOut"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/high16 v4, 0x1020000

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/facebook/internal/FeatureManager$Feature;->K:Lcom/facebook/internal/FeatureManager$Feature;

    .line 21
    new-instance v4, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Share"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/high16 v2, 0x2000000

    invoke-direct {v4, v15, v14, v2}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    .line 22
    new-instance v2, Lcom/facebook/internal/FeatureManager$Feature;

    const-string v15, "Places"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/high16 v4, 0x3000000

    invoke-direct {v2, v15, v14, v4}, Lcom/facebook/internal/FeatureManager$Feature;-><init>(Ljava/lang/String;II)V

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/facebook/internal/FeatureManager$Feature;

    const/4 v15, 0x0

    aput-object v0, v4, v15

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    aput-object v2, v4, v14

    .line 23
    sput-object v4, Lcom/facebook/internal/FeatureManager$Feature;->L:[Lcom/facebook/internal/FeatureManager$Feature;

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
    iput p3, p0, Lcom/facebook/internal/FeatureManager$Feature;->r:I

    return-void
.end method

.method public static f(I)Lcom/facebook/internal/FeatureManager$Feature;
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/internal/FeatureManager$Feature;->values()[Lcom/facebook/internal/FeatureManager$Feature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lcom/facebook/internal/FeatureManager$Feature;->r:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->s:Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/FeatureManager$Feature;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/internal/FeatureManager$Feature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/internal/FeatureManager$Feature;

    return-object p0
.end method

.method public static values()[Lcom/facebook/internal/FeatureManager$Feature;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/internal/FeatureManager$Feature;->L:[Lcom/facebook/internal/FeatureManager$Feature;

    invoke-virtual {v0}, [Lcom/facebook/internal/FeatureManager$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/internal/FeatureManager$Feature;

    return-object v0
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .locals 2

    const-string v0, "FBSDKFeature"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/FeatureManager$Feature;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string v0, "PlacesKit"

    goto :goto_0

    :pswitch_1
    const-string v0, "ShareKit"

    goto :goto_0

    :pswitch_2
    const-string v0, "LoginKit"

    goto :goto_0

    :pswitch_3
    const-string v0, "CodelessEvents"

    goto :goto_0

    :pswitch_4
    const-string v0, "AppEvents"

    goto :goto_0

    :pswitch_5
    const-string v0, "CoreKit"

    goto :goto_0

    :pswitch_6
    const-string v0, "IgnoreAppSwitchToLoggedOut"

    goto :goto_0

    :pswitch_7
    const-string v0, "Monitoring"

    goto :goto_0

    :pswitch_8
    const-string v0, "ChromeCustomTabsPrefetching"

    goto :goto_0

    :pswitch_9
    const-string v0, "EventDeactivation"

    goto :goto_0

    :pswitch_a
    const-string v0, "ModelRequest"

    goto :goto_0

    :pswitch_b
    const-string v0, "IntelligentIntegrity"

    goto :goto_0

    :pswitch_c
    const-string v0, "SuggestedEvents"

    goto :goto_0

    :pswitch_d
    const-string v0, "PrivacyProtection"

    goto :goto_0

    :pswitch_e
    const-string v0, "AAM"

    goto :goto_0

    :pswitch_f
    const-string v0, "ErrorReport"

    goto :goto_0

    :pswitch_10
    const-string v0, "ThreadCheck"

    goto :goto_0

    :pswitch_11
    const-string v0, "CrashShield"

    goto :goto_0

    :pswitch_12
    const-string v0, "CrashReport"

    goto :goto_0

    :pswitch_13
    const-string v0, "Instrument"

    goto :goto_0

    :pswitch_14
    const-string v0, "RestrictiveDataFiltering"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_14
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
