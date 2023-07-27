import { Sequelize, DataTypes, Dialect } from 'sequelize'
import 'dotenv/config'

const sequelize = new Sequelize(
  process.env.DB_NAME as string,
  process.env.DB_USERNAME as string,
  process.env.DB_PASSWORD as string,
  {
    host: process.env.DB_HOST || 'localhost',
    dialect: process.env.DB_DIALECT as Dialect || 'postgres'
  }
)

const Team = sequelize.define('team', {
  name: { type: DataTypes.STRING, allowNull: false }
}, {
  underscored: true,
  timestamps: true
})

const Player = sequelize.define('player', {
  name: { type: DataTypes.STRING, allowNull: false },
  pos: { type: DataTypes.STRING, allowNull: false },
  ovr: { type: DataTypes.INTEGER, allowNull: false }
}, {
  underscored: true,
  timestamps: true
})

Team.hasMany(Player)
Player.belongsTo(Team)

export default sequelize
