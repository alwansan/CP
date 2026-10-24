.class public final Lcom/facebook/internal/FetchedAppSettings;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Lcom/facebook/internal/FacebookRequestErrorClassification;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public j:Lorg/json/JSONArray;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;ZILjava/util/EnumSet;Ljava/util/Map;ZLcom/facebook/internal/FacebookRequestErrorClassification;Ljava/lang/String;Ljava/lang/String;ZZLorg/json/JSONArray;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/internal/SmartLoginOption;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;",
            ">;>;Z",
            "Lcom/facebook/internal/FacebookRequestErrorClassification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->a:Z

    move-object v1, p6

    .line 3
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->d:Ljava/util/Map;

    move-object v1, p8

    .line 4
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->f:Lcom/facebook/internal/FacebookRequestErrorClassification;

    move v1, p4

    .line 5
    iput v1, v0, Lcom/facebook/internal/FetchedAppSettings;->b:I

    move v1, p7

    .line 6
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->e:Z

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->c:Ljava/util/EnumSet;

    move v1, p11

    .line 8
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->g:Z

    move v1, p12

    .line 9
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->h:Z

    move-object v1, p13

    .line 10
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->j:Lorg/json/JSONArray;

    move-object/from16 v1, p14

    .line 11
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->i:Ljava/lang/String;

    move/from16 v1, p16

    .line 12
    iput-boolean v1, v0, Lcom/facebook/internal/FetchedAppSettings;->k:Z

    move-object/from16 v1, p17

    .line 13
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->l:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 14
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->m:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 15
    iput-object v1, v0, Lcom/facebook/internal/FetchedAppSettings;->n:Ljava/lang/String;

    return-void
.end method
